/*
stately.js v1.13
No dependencies on other libraries. Will use jQuery for DOMContentLoaded event if present.
*/
var STATELY = STATELY || (function(d) {
    var states = {},
        groups = 0,
        journal = [],
        started = false,
        start_states = {},
        set_loaded = true,
        listeners = {},
        current_state = {},
        debug = false;

    function addCSS(css, id) {
        if (id) $('#' + id).remove();
        var head = document.getElementsByTagName('head')[0];
        var styleElement = document.createElement('style');
        if (id) styleElement.id = id;
        styleElement.setAttribute('type', 'text/css');
        if (styleElement.styleSheet) { // IE
            styleElement.styleSheet.cssText = css;
        } else { // the world
            styleElement.appendChild(document.createTextNode(css));
        }
        head.appendChild(styleElement);
        return this;
    }

    function hasClass(e, c) {
        var r = new RegExp("^" + c + "\\s+|\\s+" + c + "\\s+|\\s+" + c + "$", "g");
        var ec = " " + e.className + " ";
        return r.test(ec);
    }

    function addClass(e, c) {
        if (!hasClass(e, c)) {
            var ec = (e.className + " " + c).replace(/^ *| *$/g, "");
            e.className = ec;
        }
    }

    function removeClass(e, c) {
        var r = new RegExp("^" + c + "\\s+|\\s+" + c + "\\s+|\\s+" + c + "$", "g");
        var ec = " " + e.className + " ";
        ec = ec.replace(r, " ").replace(/^ *| *$/g, "").replace(/\s+/g, " ");;
        e.className = ec;
    }

    function toggleClass(e, c1, c2) {
        if (hasClass(e, c1)) {
            removeClass(e, c1);
            addClass(e, c2);
        } else {
            removeClass(e, c2);
            addClass(e, c1);
        }
    }


    function group(name, statelist, scope, typ, typ_selected) {
        if (arguments.length == 1) {
            name = name.split('|');
            for (var i = 0; i < name.length; i++) {
                name[i] = name[i].split('-');
                if (name[i].length < 2) continue;
                group(name[i][0], name[i][1]);
            }
            return this;
        }
        if (typeof statelist === 'string') statelist = statelist.split(',');
        journal.push([name, statelist, scope, typ, typ_selected]);
        //start_states[name]=statelist[0];
        if (started) {
            build(name, statelist, scope, typ, typ_selected);
        }
        //.current_state[name]=statelist[0];
        if (started) {
            build(name, statelist, scope, typ, typ_selected);
            set(name, statelist[0]);
            _write(name);
        }
        return this;
    }

    function build(name, statelist, scope, typ, typ_selected) {
        var selector;
        scope = scope || d.body;
        if (scope === null || typeof scope === 'undefined') {
            throw new Error("Scope for state " + name + " is illegal or missing.");
        }
        typ = typ || 'display:none;';
        typ_selected = typ_selected || '';
        if (typeof(scope) === "object" && ('tagName' in scope)) {
            if (scope.tagName === "BODY") {
                selector = "body";
            } else if (scope.hasAttribute('id')) {
                selector = '#' + scope.id;
            } else {
                groups += 1;
                scope.id = "stately_" + groups;
                selector = '#' + scope.id;
            }

        } else if (typeof(scope) === "string") {
            selector = '#' + scope;
            var scope_tmp = d.getElementById(scope);
            scope = scope_tmp;
        }
        states[(selector != 'body' ? selector.substring(1) + '-' : '') + name] = {
            n: name,
            a: statelist,
            e: scope,
            r: selector,
            t: typ,
            on: typ_selected
        };
        //set((selector != 'body' ? selector.substring(1) + '-' : '') + name, statelist[0]);
        // Was overwriting early set states
    }

    function _write(state) {
        var css = "",
            s, i, j, sep = "";

        for (i = 0; i < journal.length; i++) {
            if (typeof(state) == 'undefined' || state == journal[i][0]) build(journal[i][0], journal[i][1], journal[i][2], journal[i][3], journal[i][4]);
        }

        for (s in states) {
            if ((typeof(state) == 'undefined' || state == s) && states[s].hasOwnProperty('a') && typeof(states[s].a) !== "undefined") {
                for (i = 0; i < states[s].a.length; i++) {
                    for (j = 0; j < states[s].a.length; j++) {
                        if (i != j) {
                            css += sep + states[s].r + "." + states[s].n + "-" + states[s].a[i] + " " + "." + states[s].n + "-" + states[s].a[j];
                            sep = ",";
                        }
                    }
                }
                css += "{" + states[s].t + "}\n";
                sep = "";
                for (i = 0; i < states[s].a.length; i++) {
                    css += sep + states[s].r + "." + states[s].n + "-" + states[s].a[i] + " " + "." + states[s].n + "-not-" + states[s].a[i];
                    sep = ",";
                }
                css += "{" + states[s].t + "}\n";
                sep = "";
                if ('on' in states[s] && states[s].on) {
                    for (i = 0; i < states[s].a.length; i++) {
                        css += sep + states[s].r + "." + states[s].n + "-" + states[s].a[i] + " " + "." + states[s].n + "-" + states[s].a[i];
                        sep = ",";
                    }
                    css += "{" + states[s].on + "}\n";
                    sep = "";
                }
            }
        }
        addCSS(css);

        for (s in states) {
            if (typeof(state) == 'undefined' || state == s) {
                if (s in start_states) set((states[s].r != 'body' ? states[s].r.substring(1) + '-' : '') + s, start_states[s]);
                else set((states[s].r != 'body' ? states[s].r.substring(1) + '-' : '') + s, states[s].a[0]);
            }
        }
    }

    function get(n) {
        if (typeof(n) === 'undefined') return current_state;
        return current_state[n];
    }

    function groupAttr(n, a) {
        if (typeof a === 'undefined') return states[n];
        return states[n][a];
    }

    function set(name, state) {
        var i, prv;

        if (typeof(name) === "object") {
            for (i in name) set(i, name[i]);
            return this;
        }

        debug && window.console && console.log && console.log('set', started, name, state);

        if (state == 'debug') debug = (state === true) || state === 'y';

        if (started && states[name] && states[name].a && 'length' in states[name].a) {
            for (i = 0; i < states[name].a.length; i++) {
                if (states[name].a[i] != state && states[name].e) removeClass(states[name].e, states[name].n + "-" + states[name].a[i]);
            }
            if (states[name]) {
                addClass(states[name].e, states[name].n + "-" + state);
                current_state[name] = state;
                trigger('set-' + name, state);
                trigger('change', name, state);
                trigger('set-' + name + "-" + state);
            } else {
                debug && window.console && console.log && console.log('set', "No state type", name);
            }
        }
        start_states[name] = state;

        if (name == 'loaded' && started) {
            if (state == 'y') {
                removeClass(d.body, "loading");
                addClass(d.body, "loaded");
            } else if (state == 'n') {
                removeClass(d.body, "loaded");
                addClass(d.body, "loading");
            }
        }

        return this;
    }

    function onload(f) {
        if (started) {
            f();
            return;
        }
        if (document.addEventListener) {
            document.addEventListener("DOMContentLoaded", f, false);
        } else if (window.jQuery) {
            jQuery(f);
        } else {
            var w = window.onload;
            window.onload = function() {
                f();
                if (w) w();
            };
        }
    }

    onload(function() {
        started = true;
        _write();
        if (set_loaded) loaded();
        trigger('started', states, current_state);
    });

    function setLoadState(s) {
        set_loaded = (s === true);
    };

    function loaded(l) {
        if (arguments.length == 0) l = true;
        else l = (l === true);
        if (l) {
            if (started) {
                debug && window.console && console.log && console.log("loaded");
                addClass(d.body, 'loaded');
                removeClass(d.body, 'loading');
                set('loaded', 'y');
                trigger('loaded');
            } else set_loaded = true;
        } else {
            set('loaded', 'n');
        }
    };

    function setStateStyle(n, a, b) {
        if (n in states) {
            if (a) states[n]['t'] = a;
            if (b) states[n]['on'] = b;
            return this;
        }
        for (i = 0; i < journal.length; i++) {
            if (n === journal[i][0]) {
                if (a) journal[i][3] = a;
                if (b) journal[i][3] = b;
            }
        }
        return this;
    }

    function on(name, func) {
        if (typeof(func) === 'function') {
            if (name in listeners) listeners[name].push(func);
            else listeners[name] = [func];
        } else {
            window.console && console.error && console.error('Used an invalid function as a callback.');
        }
        return this;
    }

    function toggle(name) {
        var i;
        if (name in states) {
            for (i = 0; i < states[name]['a'].length; i++) {
                if (current_state[name] == states[name]['a'][i]) {
                    i += 1;
                    if (i >= states[name]['a'].length) i = 0;
                    set(name, states[name]['a'][i]);
                    break;
                }
            }

        }
        return this;
    }

    // Can accept arbitrary number of parameters,

    function trigger(name) {
        var a = Array.prototype.slice.call(arguments),
            i;
        if (a.length > 1) a = a.slice(1);
        else a = null;
        if (name in listeners) {
            for (i in listeners[name]) {
                if (listeners[name][i].apply && listeners[name][i].apply(this, a)) break;
            }
        }
    }

    function onchange(n, f) {
        on('set-' + n, f);
    };


    return {
        version: "1.13",
        addCSS: addCSS,
        group: group,
        set: set,
        get: get,
        setStateStyle: setStateStyle,
        onload: onload,
        setLoadState: setLoadState,
        loaded: loaded,
        onchange: onchange,
        on: on,
        trigger: trigger,
        toggle: toggle,
        flush: _write,
        groupAttr: groupAttr
    };
})(document);