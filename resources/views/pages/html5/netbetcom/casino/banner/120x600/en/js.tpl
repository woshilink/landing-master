<script>
    {literal}
    (function (lib, img, cjs, ss, an) {

    var p; // shortcut to reference prototypes
    lib.webFontTxtInst = {};
    var loadedTypekitCount = 0;
    var loadedGoogleCount = 0;
    var gFontsUpdateCacheList = [];
    var tFontsUpdateCacheList = [];
    lib.ssMetadata = [
    {name:"120x600_atlas_", frames: [[0,0,120,600],[122,359,44,45],[122,196,176,161],[122,0,200,194],[0,602,163,249]]}
    ];



    lib.updateListCache = function (cacheList) {
    for(var i = 0; i < cacheList.length; i++) {
    if(cacheList[i].cacheCanvas)
    cacheList[i].updateCache();
    }
    };

    lib.addElementsToCache = function (textInst, cacheList) {
    var cur = textInst;
    while(cur != exportRoot) {
    if(cacheList.indexOf(cur) != -1)
    break;
    cur = cur.parent;
    }
    if(cur != exportRoot) {
    var cur2 = textInst;
    var index = cacheList.indexOf(cur);
    while(cur2 != cur) {
    cacheList.splice(index, 0, cur2);
    cur2 = cur2.parent;
    index++;
    }
    }
    else {
    cur = textInst;
    while(cur != exportRoot) {
    cacheList.push(cur);
    cur = cur.parent;
    }
    }
    };

    lib.gfontAvailable = function(family, totalGoogleCount) {
    lib.properties.webfonts[family] = true;
    var txtInst = lib.webFontTxtInst && lib.webFontTxtInst[family] || [];
    for(var f = 0; f < txtInst.length; ++f)
    lib.addElementsToCache(txtInst[f], gFontsUpdateCacheList);

    loadedGoogleCount++;
    if(loadedGoogleCount == totalGoogleCount) {
    lib.updateListCache(gFontsUpdateCacheList);
    }
    };

    lib.tfontAvailable = function(family, totalTypekitCount) {
    lib.properties.webfonts[family] = true;
    var txtInst = lib.webFontTxtInst && lib.webFontTxtInst[family] || [];
    for(var f = 0; f < txtInst.length; ++f)
    lib.addElementsToCache(txtInst[f], tFontsUpdateCacheList);

    loadedTypekitCount++;
    if(loadedTypekitCount == totalTypekitCount) {
    lib.updateListCache(tFontsUpdateCacheList);
    }
    };
    // symbols:



    (lib._120x600_1 = function() {
    this.spriteSheet = ss["120x600_atlas_"];
    this.gotoAndStop(0);
    }).prototype = p = new cjs.Sprite();



    (lib.Ball = function() {
    this.spriteSheet = ss["120x600_atlas_"];
    this.gotoAndStop(1);
    }).prototype = p = new cjs.Sprite();



    (lib.Basket = function() {
    this.spriteSheet = ss["120x600_atlas_"];
    this.gotoAndStop(2);
    }).prototype = p = new cjs.Sprite();



    (lib.Soccer_1_player = function() {
    this.spriteSheet = ss["120x600_atlas_"];
    this.gotoAndStop(3);
    }).prototype = p = new cjs.Sprite();



    (lib.Tennis = function() {
    this.spriteSheet = ss["120x600_atlas_"];
    this.gotoAndStop(4);
    }).prototype = p = new cjs.Sprite();
    // helper functions:

    function mc_symbol_clone() {
    var clone = this._cloneProps(new this.constructor(this.mode, this.startPosition, this.loop));
    clone.gotoAndStop(this.currentFrame);
    clone.paused = this.paused;
    clone.framerate = this.framerate;
    return clone;
    }

    function getMCSymbolPrototype(symbol, nominalBounds, frameBounds) {
    var prototype = cjs.extend(symbol, cjs.MovieClip);
    prototype.clone = mc_symbol_clone;
    prototype.nominalBounds = nominalBounds;
    prototype.frameBounds = frameBounds;
    return prototype;
    }


    (lib.Tween8 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Basket();
    this.instance.parent = this;
    this.instance.setTransform(-92.2,-84.4,1.048,1.048);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-92.2,-84.4,184.6,168.8);


    (lib.Tween6 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Tennis();
    this.instance.parent = this;
    this.instance.setTransform(-78.5,-161,1.204,1.204,7.2);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-116.2,-161,232.4,322.2);


    (lib.Tween4 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Ball();
    this.instance.parent = this;
    this.instance.setTransform(-17,-17.4,0.774,0.774);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-17,-17.4,34.1,34.8);


    (lib.Tween3 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Ball();
    this.instance.parent = this;
    this.instance.setTransform(-17,-17.4,0.774,0.774);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-17,-17.4,34.1,34.8);


    (lib.Tween2 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Soccer_1_player();
    this.instance.parent = this;
    this.instance.setTransform(-84.5,-82,0.845,0.845);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-84.5,-82,169.1,164);


    (lib.Tween1 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.Soccer_1_player();
    this.instance.parent = this;
    this.instance.setTransform(-84.5,-82,0.845,0.845);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(-84.5,-82,169.1,164);


    (lib.Group = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.shape = new cjs.Shape();
    this.shape.graphics.f("#EB2027").s().p("AgyCEQgRgPAAglIAAhhIghAAIAAgxIAoglQAVgVARgWIA2AAIAAAwIBFAAIAABRIhDAAIAABMQAAALAGAFQAHAEAPAAIAQAAIAXgDIgEA+IgrAGQgPACggABQgoAAgRgPg");
    this.shape.setTransform(63.6,14.7);

    this.shape_1 = new cjs.Shape();
    this.shape_1.graphics.f("#EB2027").s().p("AhjBfQgfgeAAhFQAAhCAfgbQAggeBGAAQBEAAAeAbQAeAcAAA9IgBASIgCAWIihAAQADASANAIQANAHAbAAQAYABAWgFQAbgFAZgHIgJA+QgiAKgYAEQgmAFgRABQhCAAggghgAgXgyQgJAHgCAVIBTAAQAAgTgLgJQgLgKgUAAQgVAAgJAKg");
    this.shape_1.setTransform(41.1,16.7);

    this.shape_2 = new cjs.Shape();
    this.shape_2.graphics.f("#EB2027").s().p("AgyCEQgRgPAAglIAAhhIghAAIAAgxIAoglQAVgVARgWIA2AAIAAAwIBFAAIAABRIhDAAIAABMQAAALAGAFQAHAEAPAAIAQAAIAXgDIgEA+IgrAGQgPACggABQgoAAgRgPg");
    this.shape_2.setTransform(63.6,14.7);

    this.shape_3 = new cjs.Shape();
    this.shape_3.graphics.f("#EB2027").s().p("AhjBfQgfgeAAhFQAAhCAfgbQAggeBGAAQBEAAAeAbQAeAcAAA9IgBASIgCAWIihAAQADASANAIQANAHAbAAQAYABAWgFQAbgFAZgHIgJA+QgiAKgYAEQgmAFgRABQhCAAggghgAgXgyQgJAHgCAVIBTAAQAAgTgLgJQgLgKgUAAQgVAAgJAKg");
    this.shape_3.setTransform(41.1,16.7);

    this.shape_4 = new cjs.Shape();
    this.shape_4.graphics.f("#EB2027").s().p("AiNCNIAAkZIDCAAQAwAAASAPQATAPAAAnQAAAigRARQgRASglACQAnABARARQATARAAAfQAAAogWASQgZARgwAAgAglBLIAwAAQASgBAIgFQAIgHAAgLQAAgKgHgHQgGgFgRAAIg0AAgAglgXIAxAAQANAAAIgGQAGgFAAgNQAAgMgGgEQgGgFgOAAIgyAAg");
    this.shape_4.setTransform(14.2,14.5);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

    }).prototype = getMCSymbolPrototype(lib.Group, new cjs.Rectangle(0,0,73.7,29.4), null);


    (lib.ctashine = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.shape = new cjs.Shape();
    this.shape.graphics.lf(["rgba(255,255,255,0)","rgba(255,255,255,0.878)","rgba(255,255,255,0)"],[0.224,0.518,0.816],-26.7,-20.1,30.1,12.7).s().p("AnVKRIAA0hIOrAAIAAUhg");
    this.shape.setTransform(31.1,46.3);

    this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

    }).prototype = getMCSymbolPrototype(lib.ctashine, new cjs.Rectangle(-15.9,-19.4,94.1,131.5), null);


    (lib.ctashinecontainer = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Layer 1
    this.instance = new lib.ctashine();
    this.instance.parent = this;
    this.instance.setTransform(32.8,42.6,1,1,0,0,0,32.8,42.6);

    this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

    }).prototype = getMCSymbolPrototype(lib.ctashinecontainer, new cjs.Rectangle(-15.9,-19.4,94.1,131.5), null);


    // stage content:
    (lib._120x600 = function(mode,startPosition,loop) {
    this.initialize(mode,startPosition,loop,{});

    // Logo
    this.shape = new cjs.Shape();
    this.shape.graphics.f("#FFFFFF").s().p("AiKCNIAAkZIB6AAIAgBIIAMAhIARArIADAAIgFgrIgBg1IAAg0IBhAAIAAEYIhtAAIgshkQgMgYgFgPIgMglIgEAAIAAABQAEAbABASQACAiAAAWIAABLg");
    this.shape.setTransform(14.2,27.4,0.733,0.733);

    this.shape_1 = new cjs.Shape();
    this.shape_1.graphics.f("#FFFFFF").s().p("AgzCDQgRgPAAgjIAAhhIghAAIAAgzIApglQATgTAUgXIA2AAIAAAxIBFAAIAABRIhFAAIAABKQAAANAHAEQAGAEAPABIAngFIgDA/IgsAHQgPABgfAAQgnAAgTgPg");
    this.shape_1.setTransform(51.2,27.5,0.733,0.733);

    this.shape_2 = new cjs.Shape();
    this.shape_2.graphics.f("#FFFFFF").s().p("AhjBfQgfgeAAhFQAAhCAfgcQAggcBGAAQBEAAAeAbQAeAaAAA/IgBASIgCAUIiiAAQAEAUAMAHQAOAIAbAAQAXgBAXgEQAbgFAZgHIgJA+QggAJgaAGQgmAEgRAAQhCAAgggggAgXgzQgLAKAAATIBTAAQAAgTgLgKQgLgKgUAAQgVAAgJAKg");
    this.shape_2.setTransform(34.8,29,0.733,0.733);

    this.shape_3 = new cjs.Shape();
    this.shape_3.graphics.f("#FFFFFF").s().p("AiKCNIAAkZIB6AAIAgBIIAMAhIARArIADAAIgFgrIgBg1IAAg0IBhAAIAAEYIhtAAIgshkQgMgYgFgPIgMglIgEAAIAAABQAEAbABASQACAiAAAWIAABLg");
    this.shape_3.setTransform(14.2,27.4,0.733,0.733);

    this.instance = new lib.Group();
    this.instance.parent = this;
    this.instance.setTransform(89,27.7,0.733,0.733,0,0,0,37,14.9);
    this.instance.alpha = 0.289;

    this.shape_4 = new cjs.Shape();
    this.shape_4.graphics.f("#CB1E23").s().p("AgyCDQgRgPAAgjIAAhhIghAAIAAgzIAoglQAVgUARgWIA2AAIAAAxIBFAAIAABRIhDAAIAABKQAAANAGAEQAHAEAPABIAQgCIAXgDIgEA/IgrAHQgPABggAAQgoAAgRgPg");
    this.shape_4.setTransform(108.5,27.5,0.733,0.733);

    this.shape_5 = new cjs.Shape();
    this.shape_5.graphics.f("#CB1E23").s().p("AhjBfQgfgeAAhFQAAhCAfgcQAggcBGAAQBEAAAeAbQAeAaAAA/IgBASIgCAUIihAAQADAUANAHQANAIAbAAQAYgBAWgEQAbgFAZgHIgJA+QgiAKgYAFQgmAEgRAAQhCAAgggggAgXgzQgIAIgDAVIBTAAQAAgTgLgKQgMgKgTAAQgWAAgIAKg");
    this.shape_5.setTransform(92.1,29,0.733,0.733);

    this.shape_6 = new cjs.Shape();
    this.shape_6.graphics.f("#CB1E23").s().p("AgyCDQgRgPAAgjIAAhhIghAAIAAgzIAoglQAVgUARgWIA2AAIAAAxIBFAAIAABRIhDAAIAABKQAAANAGAEQAHAEAPABIAQgCIAXgDIgEA/IgrAHQgPABggAAQgoAAgRgPg");
    this.shape_6.setTransform(108.5,27.5,0.733,0.733);

    this.shape_7 = new cjs.Shape();
    this.shape_7.graphics.f("#CB1E23").s().p("AhjBfQgfgeAAhFQAAhCAfgcQAggcBGAAQBEAAAeAbQAeAaAAA/IgBASIgCAUIihAAQADAUANAHQANAIAbAAQAYgBAWgEQAbgFAZgHIgJA+QgiAKgYAFQgmAEgRAAQhCAAgggggAgXgzQgIAIgDAVIBTAAQAAgTgLgKQgMgKgTAAQgWAAgIAKg");
    this.shape_7.setTransform(92.1,29,0.733,0.733);

    this.shape_8 = new cjs.Shape();
    this.shape_8.graphics.f("#CB1E23").s().p("AiNCNIAAkZIDCAAQAwAAASAPQATAQAAAmQAAAhgRATQgRARglACQAnABARARQATAQAAAgQAAAngWATQgZARgwAAgAglBKIAwAAQASABAIgGQAIgHAAgLQAAgKgHgHQgGgFgRAAIg0AAgAglgXIAxAAQANAAAIgGQAGgFAAgNQAAgMgGgEQgGgFgOAAIgyAAg");
    this.shape_8.setTransform(72.3,27.4,0.733,0.733);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_8},{t:this.shape_7},{t:this.shape_6},{t:this.shape_5},{t:this.shape_4},{t:this.instance},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(100));

    // Logo_BG
    this.shape_9 = new cjs.Shape();
    this.shape_9.graphics.f("#000000").s().p("AphEiIAApDITDAAIAAJDg");
    this.shape_9.setTransform(60.1,29,1.008,1);

    this.timeline.addTween(cjs.Tween.get(this.shape_9).wait(100));

    // Ball
    this.instance_1 = new lib.Ball();
    this.instance_1.parent = this;
    this.instance_1.setTransform(78,292,0.774,0.774);

    this.instance_2 = new lib.Tween3("synched",0);
    this.instance_2.parent = this;
    this.instance_2.setTransform(58.1,312.8);
    this.instance_2.alpha = 0;
    this.instance_2._off = true;

    this.instance_3 = new lib.Tween4("synched",0);
    this.instance_3.parent = this;
    this.instance_3.setTransform(95,309.4);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_1}]}).to({state:[{t:this.instance_2}]},1).to({state:[{t:this.instance_2}]},6).to({state:[{t:this.instance_3}]},9).wait(84));
    this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(1).to({_off:false},0).wait(6).to({startPosition:0},0).to({_off:true,x:95,y:309.4,alpha:1},9).wait(84));

    // Soccer
    this.instance_4 = new lib.Soccer_1_player();
    this.instance_4.parent = this;
    this.instance_4.setTransform(-15,177,0.845,0.845);

    this.instance_5 = new lib.Tween1("synched",0);
    this.instance_5.parent = this;
    this.instance_5.setTransform(54.5,264.2);
    this.instance_5.alpha = 0;
    this.instance_5._off = true;

    this.instance_6 = new lib.Tween2("synched",0);
    this.instance_6.parent = this;
    this.instance_6.setTransform(69.5,259);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_4}]}).to({state:[{t:this.instance_5}]},1).to({state:[{t:this.instance_6}]},10).wait(89));
    this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(1).to({_off:false},0).to({_off:true,x:69.5,y:259,alpha:1},10).wait(89));

    // Basket
    this.instance_7 = new lib.Tween8("synched",0);
    this.instance_7.parent = this;
    this.instance_7.setTransform(47.7,154.3,0.758,0.734,0,8.6,-171.4,-0.1,0.2);

    this.timeline.addTween(cjs.Tween.get(this.instance_7).wait(1).to({x:63.4,y:165.3,alpha:0},0).wait(12).to({startPosition:0},0).to({x:47.7,y:154.3,alpha:1},10).wait(77));

    // Tennis
    this.instance_8 = new lib.Tween6("synched",0);
    this.instance_8.parent = this;
    this.instance_8.setTransform(62.2,176.1,0.747,0.783,0,0,180);

    this.timeline.addTween(cjs.Tween.get(this.instance_8).wait(1).to({alpha:0},0).wait(16).to({x:56.2,y:188.1},0).to({x:64.2,y:177.1,alpha:1},10).wait(73));

    // BET_NOW
    this.shape_10 = new cjs.Shape();
    this.shape_10.graphics.f("#000000").s().p("AAeBGIgehgIgdBgIgYAAIgwiLIAhAAIAcBQIAYhQIAgAAIAZBQIAchQIAhAAIgxCLg");
    this.shape_10.setTransform(98.6,506.4);

    this.shape_11 = new cjs.Shape();
    this.shape_11.graphics.f("#000000").s().p("AgzAzQgWgUABgfQgBgeAWgVQAVgUAeAAQAfAAAWAUQAUAVAAAeQAAAfgUAUQgWAVgfAAQgeAAgVgVgAgcgfQgNANAAASQAAATANANQALANARAAQARAAAMgNQANgNAAgTQAAgSgNgNQgMgNgRAAQgRAAgLANg");
    this.shape_11.setTransform(80.2,506.3);

    this.shape_12 = new cjs.Shape();
    this.shape_12.graphics.f("#000000").s().p("AAhBGIhBhWIAABWIggAAIAAiLIAeAAIBDBZIAAhZIAfAAIAACLg");
    this.shape_12.setTransform(63.7,506.4);

    this.shape_13 = new cjs.Shape();
    this.shape_13.graphics.f("#000000").s().p("AgPBGIAAhwIgnAAIAAgbIBtAAIAAAbIgnAAIAABwg");
    this.shape_13.setTransform(44.2,506.4);

    this.shape_14 = new cjs.Shape();
    this.shape_14.graphics.f("#000000").s().p("AgzBGIAAiLIBkAAIAAAcIhEAAIAAAdIA+AAIAAAZIg+AAIAAAdIBHAAIAAAcg");
    this.shape_14.setTransform(31.9,506.4);

    this.shape_15 = new cjs.Shape();
    this.shape_15.graphics.f("#000000").s().p("Ag3BGIAAiLIA2AAQAOAAAKADQAKAEAGAGQAJALAAANQAAARgKAIIgGADIgEACQANACAHAJQAIAJAAANQAAAPgKALQgMANgdAAgAgXArIAVAAQAMAAAHgDQAGgDAAgJQABgLgIgDQgGgCgPAAIgSAAgAgXgMIAOAAQAMAAAHgDQAGgDAAgJQAAgKgGgDQgGgCgMAAIgPAAg");
    this.shape_15.setTransform(18.6,506.4);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_15},{t:this.shape_14},{t:this.shape_13},{t:this.shape_12},{t:this.shape_11},{t:this.shape_10}]}).wait(100));

    // CTA_BG copy (mask)
    var mask = new cjs.Shape();
    mask._off = true;
    mask.graphics.p("EgGnAphQhgAAAAhgIAAlQQAAhgBgAAIOFAAQBgAAAABgIAAFQQAABghgAAg");
    mask.setTransform(57.4,265.7);

    // Light
    this.instance_9 = new lib.ctashinecontainer();
    this.instance_9.parent = this;
    this.instance_9.setTransform(-68.4,456.5,2.068,2.068,0,0,0,32.8,42.6);
    this.instance_9.cache(-18,-21,98,136);

    var maskedShapeInstanceList = [this.instance_9];

    for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
    maskedShapeInstanceList[shapedInstanceItr].mask = mask;
    }

    this.timeline.addTween(cjs.Tween.get(this.instance_9).wait(53).to({x:202.6},16).wait(31));

    // CTA_BG
    this.shape_16 = new cjs.Shape();
    this.shape_16.graphics.lf(["#95CC00","#BAFF00"],[0,1],0,31.8,0,-31.7).s().p("AnVETQhkAAAAhkIAAldQAAhkBkAAIOrAAQBkAAAABkIAAFdQAABkhkAAg");
    this.shape_16.setTransform(60,505,0.959,0.959);

    this.timeline.addTween(cjs.Tween.get(this.shape_16).wait(100));

    // £50
    this.shape_17 = new cjs.Shape();
    this.shape_17.graphics.f("#BAFF00").s().p("AhIEwQghgQgUgaQgTgbgKgiQgLgjAAgnIAAj8QAAgpAKgjQAKgiATgaQAUgbAggPQAhgPApgBQArABAgAPQAgAPAUAbQATAbAKAhQAKAjAAApIAAD8QAAAngLAjQgKAigUAbQgUAbggAPQggAPgpAAQgoAAgggPgAgUjPQgJAGgFAJQgEAJgDAOQgDANAAAJIgBAWIAAD8IABAVIAEAXQADAMAEAKQAFAJAJAHQAJAGAKAAQAPAAAKgIQAJgKAFgPQAEgPACgNIABgbIAAj8QAAhZguAAQgLAAgJAHg");
    this.shape_17.setTransform(98.5,394);

    this.shape_18 = new cjs.Shape();
    this.shape_18.graphics.f("#BAFF00").s().p("AhDEvQgcgLgSgTQgTgSgKgbQgMgbgEgdQgEgeAAgjIB2AAIAAAcIACAZQAAANADAJQADAIAEAIQAEAIAHADQAGAEAJAAQALAAAIgFQAKgEAFgIQAGgHAEgKQADgLACgLIADgXIABgXIAAgUIAAgKIAAgRIgCgUQgCgLgDgIQgCgJgGgIQgFgIgHgDQgJgEgKAAQgQAAgMANQgOAPgHATIhlAAIAAlhIEkAAIAAB1Ii2AAIAABvQAigUAZAAQAhAAAaALQAZAKAQASQAPARALAZQAKAYADAaQAEAaAAAfQAAAegCAbQgEAagGAbQgGAbgNAVQgLAVgSARQgSARgaAJQgaAJghAAQgmAAgdgLg");
    this.shape_18.setTransform(60.5,394.5);

    this.shape_19 = new cjs.Shape();
    this.shape_19.graphics.f("#BAFF00").s().p("AiiE6IAAhAIApgUIAAilIgpAAIAAhXIApAAIAAhMQAAgXACgVQABgTAEgXQAEgXAGgSQAHgSALgRQALgQAQgMQAPgLAWgHQAWgHAbAAQAaAAAVAHQAVAFAOAJQAOAJAKAOQALAPAFAOQAGAPADATQADAUABAQIABAmIhvAAQAAhUgZAAQgYAAAAB3IAABLIBUAAIAABXIhUAAIAACXICdAAIAABig");
    this.shape_19.setTransform(21.3,393.4);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_19},{t:this.shape_18},{t:this.shape_17}]}).wait(100));

    // Free_Bet
    this.shape_20 = new cjs.Shape();
    this.shape_20.graphics.f("#FFFFFF").s().p("AgkClQgTgIgKgPQgLgPgHgSQgFgRgBgUIBEgOIAAASIADARQABAKADAFQADAGAFAEQAEAEAGAAQAUAAAAgZQAAgkgmgiIgVgSIgQgNIgOgPQgIgJgFgJQgFgJgDgNQgDgMAAgOQAAgpAagXQAagYApAAQAkAAAZAZQAZAZAAAkIAAACIAAAGIhGAKIAAgHIAAgGIgBgOIgDgLQgCgHgEgDQgFgEgFAAQgLAAgGAIQgFAJgBAMQABAKADAKQADAJAHAIIALANIAPANIANALQAOAMAKAKQAJALAKAOQAIAOAEAQQAFARAAASQAAAjgZAXQgZAWgkAAQgXAAgRgJg");
    this.shape_20.setTransform(106,450.9);

    this.shape_21 = new cjs.Shape();
    this.shape_21.graphics.f("#FFFFFF").s().p("AgfCnQgOgEgKgGQgKgHgIgJQgHgKgFgLQgEgLgDgOQgDgNAAgNIgBgdIAAjRIBDAAIAADPIAAAaIABATQABAMACAEIAFAKQADAGAFABQAGACAGAAQAHAAAGgCQAFgBADgFIAFgKQACgFABgLIABgUIAAgZIAAgBIAAjPIBDAAIAADRIAAAdQgBANgDANQgDAOgEALQgFALgHAKQgHAJgKAHQgLAGgOAEQgOADgSAAQgRAAgOgDg");
    this.shape_21.setTransform(83.5,451.2);

    this.shape_22 = new cjs.Shape();
    this.shape_22.graphics.f("#FFFFFF").s().p("AAqCnIhIi4IAAC4Ig6AAIAAlNIAxAAIBICuIAAiuIA4AAIAAFNg");
    this.shape_22.setTransform(60.1,450.9);

    this.shape_23 = new cjs.Shape();
    this.shape_23.graphics.f("#FFFFFF").s().p("AglCoQgRgHgLgKQgLgKgHgPQgIgPgDgRQgDgRAAgUIAAhvQAAh2BhAAQBiAAAAB2IAABtQAAAVgDAQQgDARgHAQQgIAPgKALQgMAKgQAHQgRAFgWAAQgVAAgQgFgAgOh0QgHAFgDAHQgDAJgBAHQgBAIAAAJIAACQQAAAxAdgBQAeABAAgxIAAiQQAAgxgegBQgIABgGAEg");
    this.shape_23.setTransform(36.9,450.9);

    this.shape_24 = new cjs.Shape();
    this.shape_24.graphics.f("#FFFFFF").s().p("AhZCnIAAlNIBEAAQATAAAOACQAOACAOAFQANAGAJAJQAJAKAFAQQAFAPAAAVQAAAagMAQQgMAPgaAIQA7AOAABGQAAAygYAYQgYAYgxAAgAgWB3IAHAAQANAAAHgCQAIgEAEgHQAEgHACgKQACgJgBgQQABgagKgPQgJgOgVAAIgHAAgAgWgjIALAAQAKAAAFgDQAGgDAEgIQADgGABgIQACgIAAgKIgBgPIgEgKQgBgFgDgDIgHgDIgHgDIgJgBIgKAAg");
    this.shape_24.setTransform(14.4,450.9);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_24},{t:this.shape_23},{t:this.shape_22},{t:this.shape_21},{t:this.shape_20}]}).wait(100));

    // T&C
    this.shape_25 = new cjs.Shape();
    this.shape_25.graphics.f("#999999").s().p("AgRAvIgDAAIAAgNQAGAAADgDQACgDAAgGQAAgHgDgPIgHgdIgFgRIASAAIAGAqIAHgqIASAAIgRBNIgDAHIgEAFIgEADIgHABIgHAAg");
    this.shape_25.setTransform(94.1,586.4);

    this.shape_26 = new cjs.Shape();
    this.shape_26.graphics.f("#999999").s().p("AgJA1IAAhpIATAAIAABpg");
    this.shape_26.setTransform(90,584.1);

    this.shape_27 = new cjs.Shape();
    this.shape_27.graphics.f("#999999").s().p("AAEAnIAAg5QAAgGgDABIgBAAIAAAAIAAABIgBAAIAAABIgBAAIgBAAIAAABIAAAAIAAA7IgUAAIAAhMIAUAAIAAAGQACgEADgBQAEgCAFAAQAEAAADACIAFAGIABAJIAAA8g");
    this.shape_27.setTransform(85.5,585.5);

    this.shape_28 = new cjs.Shape();
    this.shape_28.graphics.f("#999999").s().p("AgLAlQgGgCgDgFQgDgFAAgHIAAgfQAAgMAGgHQAFgHAMAAQAMAAAGAHQAGAHAAAMIAAAfQAAAKgHAGQgHAGgKAAQgFAAgGgDgAgDgSIAAAlIAAACIAAACIABABIACABQAEAAAAgGIAAglQAAgGgEAAQgDAAAAAGg");
    this.shape_28.setTransform(79.7,585.5);

    this.shape_29 = new cjs.Shape();
    this.shape_29.graphics.f("#999999").s().p("AgNAiQgHgFgCgJIAPgGIABADIABADIACADIACACIACAAQADAAAAgEIAAgDIgCgDIgCgDIgDgDIgDgDIgEgDIgKgKQgDgFAAgGQAAgFACgEQACgEAEgDIAIgEIAIgBIAIACIAHAFIAFAHQACADABAEIgOAFIgBgDIgCgDIgCgDIgCgBIgDgBQAAAAAAAAQAAAAgBAAQAAAAAAABQgBAAAAAAIgBADQAAADADADIAGAIIAEADIAFAEIAEAFQADADABADIABAHQAAAJgHAGQgGAGgKAAQgHAAgHgGg");
    this.shape_29.setTransform(71.8,585.5);

    this.shape_30 = new cjs.Shape();
    this.shape_30.graphics.f("#999999").s().p("AgRAnIAAhMIATAAIAAAGQAEgHAGAAIAGABIAAAQIgIAAQgEAAgCACQgCADAAAEIAAAzg");
    this.shape_30.setTransform(67.4,585.5);

    this.shape_31 = new cjs.Shape();
    this.shape_31.graphics.f("#999999").s().p("AgPAiQgIgGAAgKIAAgfQAAgMAHgHQAFgHALAAQAMAAAGAHQAGAHgBAMIAAAPIgaAAIAAARQAAAGADAAQAEAAAAgHIAAgIIATAAIAAAIQAAAKgGAGQgIAGgJAAQgIAAgHgGgAgDgSIAAAKIAHAAIAAgKQAAgGgEAAQgDAAAAAGg");
    this.shape_31.setTransform(62.4,585.5);

    this.shape_32 = new cjs.Shape();
    this.shape_32.graphics.f("#999999").s().p("AASAnIAAg5IAAgCIAAgBIgBgBIgCgBQgCgBgDAFIAAA6IgTAAIAAg5QAAgGgCABQgDgBgDAFIAAA6IgUAAIAAhMIAUAAIAAAGQADgDAEgCQADgCAEAAQADAAADACQAEADABADQADgDAEgDQAFgCAEAAQAEAAAEACQADADABADIACAJIAAA8g");
    this.shape_32.setTransform(55.3,585.5);

    this.shape_33 = new cjs.Shape();
    this.shape_33.graphics.f("#999999").s().p("AgLAlQgFgCgDgFQgEgFAAgHIAAgfQAAgMAGgHQAGgHALAAQAMAAAGAHQAGAHAAAMIAAAfQAAAKgHAGQgHAGgKAAQgFAAgGgDgAgDgSIAAAlIAAACIABACIABABIABABQAFAAgBgGIAAglQABgGgFAAQgDAAAAAGg");
    this.shape_33.setTransform(48.1,585.5);

    this.shape_34 = new cjs.Shape();
    this.shape_34.graphics.f("#999999").s().p("AAAAyIgEgCIgDgDIgCgFIgCgFIAAgFIAAgGIAAgkIgGAAIAAgNIAGAAIAAgZIASAAIAAAZIAKAAIAAANIgKAAIAAApQAAAAAAABQAAABABAAQAAABAAAAQAAABABAAQAAABAAAAQABABAAAAQABAAAAAAQABAAABAAIAFAAIAAAPQgDABgJAAIgGgBg");
    this.shape_34.setTransform(43.3,584.3);

    this.shape_35 = new cjs.Shape();
    this.shape_35.graphics.f("#999999").s().p("AgNAiQgHgFgCgJIAPgGIABADIABADIACADIACACIACAAQADAAAAgEIAAgDIgCgDIgCgDIgDgDIgDgDIgEgDIgKgKQgDgFAAgGQAAgFACgEQACgEAEgDIAIgEIAIgBIAIACIAHAFIAFAHQACADABAEIgOAFIgBgDIgCgDIgCgDIgCgBIgDgBQAAAAAAAAQAAAAgBAAQAAAAAAABQgBAAAAAAIgBADQAAADADADIAGAIIAEADIAFAEIAEAFQADADABADIABAHQAAAJgHAGQgGAGgKAAQgHAAgHgGg");
    this.shape_35.setTransform(38.8,585.5);

    this.shape_36 = new cjs.Shape();
    this.shape_36.graphics.f("#999999").s().p("AgTAiQgEgFAAgGIAAg9IAUAAIAAA4QAAAGACABQACgBADgEIAAg6IAUAAIAABLIgUAAIAAgGIgGAGQgEACgEAAQgGAAgDgFg");
    this.shape_36.setTransform(33.3,585.6);

    this.shape_37 = new cjs.Shape();
    this.shape_37.graphics.f("#999999").s().p("AgKA1QgGgCgDgDQgEgEgCgFQgDgEAAgGIgBgLIAAgiQAAgmAeAAQAGAAAFACQAFACADADQAEADACAEIADAKIABALIAAAJIgVAAIAAgJIAAgFIAAgFIgCgEIgDgDIgDgBQgJAAABAPIAAAtQgBAPAJAAQAAAAABAAQABAAAAAAQABAAAAgBQABAAAAAAQACgCABgDIABgFIAAgHIAAgLIAVAAIAAAJIgBALIgDAKQgCAFgDADQgDAEgGACQgFACgGAAQgHAAgEgCg");
    this.shape_37.setTransform(27,584.1);

    this.shape_38 = new cjs.Shape();
    this.shape_38.graphics.f("#999999").s().p("AAHAmIgHgsIgGAsIgRAAIgMhLIARAAIAGAuIAGguIAOAAIAGAvIAHgvIAPAAIgMBLg");
    this.shape_38.setTransform(108.5,567.8);

    this.shape_39 = new cjs.Shape();
    this.shape_39.graphics.f("#999999").s().p("AgPAiQgIgGABgKIAAgfQAAgMAFgHQAGgHALAAQAMAAAGAHQAFAHABAMIAAAPIgbAAIAAARQABAGACAAQAEAAAAgHIAAgIIAUAAIAAAIQAAAKgIAGQgGAGgKAAQgJAAgGgGgAgDgSIAAAKIAHAAIAAgKQAAgGgEAAQgCAAgBAGg");
    this.shape_39.setTransform(102.1,567.8);

    this.shape_40 = new cjs.Shape();
    this.shape_40.graphics.f("#999999").s().p("AANA1IgWg6IAAA6IgSAAIAAhpIAPAAIAXA2IAAg2IARAAIAABpg");
    this.shape_40.setTransform(95.9,566.3);

    this.shape_41 = new cjs.Shape();
    this.shape_41.graphics.f("#999999").s().p("AgIAJIAAgRIASAAIAAARg");
    this.shape_41.setTransform(88.5,570.7);

    this.shape_42 = new cjs.Shape();
    this.shape_42.graphics.f("#999999").s().p("AgRAvIgDAAIAAgNQAGAAADgDQACgDAAgGQAAgHgDgPIgHgdIgFgRIASAAIAGAqIAHgqIASAAIgRBNIgDAHIgEAFIgEADIgHABIgHAAg");
    this.shape_42.setTransform(84.4,568.7);

    this.shape_43 = new cjs.Shape();
    this.shape_43.graphics.f("#999999").s().p("AgJA1IAAhpIATAAIAABpg");
    this.shape_43.setTransform(80.3,566.3);

    this.shape_44 = new cjs.Shape();
    this.shape_44.graphics.f("#999999").s().p("AgXAyIAAhhIAUAAIAAAFQACgDACgCIAHgCQAHAAAFAGQAEAFAAAHIAAAtQAAAGgEAFQgFAFgGAAQgEAAgEgCQgCgCgCgDIAAAbgAgDgeIAAApQADAEABAAIACgBIABgCIAAgCIAAgnQAAgFgDAAQgBAAgDAEg");
    this.shape_44.setTransform(75.9,568.8);

    this.shape_45 = new cjs.Shape();
    this.shape_45.graphics.f("#999999").s().p("AgXAyIAAhhIAUAAIAAAFQACgDACgCIAHgCQAHAAAFAGQAEAFAAAHIAAAtQAAAGgEAFQgFAFgGAAQgEAAgEgCQgCgCgCgDIAAAbgAgDgeIAAApQADAEABAAIACgBIABgCIAAgCIAAgnQAAgFgDAAQgBAAgDAEg");
    this.shape_45.setTransform(70,568.8);

    this.shape_46 = new cjs.Shape();
    this.shape_46.graphics.f("#999999").s().p("AgQAmQgDgBgCgDQgCgDAAgDIgBgHIAAgHIADgGIADgFIAEgDIAFgEIAHgDIAGgDIAAgGIgBgGQgBgBAAAAQAAAAgBgBQAAAAgBAAQAAAAAAAAIgCABQgBAAAAAAQAAAAgBABQAAAAAAAAQAAAAAAABIAAACIgBADIAAAEIgTAAQAAgNAGgHQAHgHAMAAQAJAAAGAGQAHAHAAAJIAAAjQAAAJACALIgSAAIgCgIQgCAGgDACQgDACgGAAQgEAAgDgCgAgFATIABAEQAAABAAAAQAAABABAAQAAAAABAAQAAAAAAAAIACgBIACgBIACgCIAAgTQgJAIAAAJg");
    this.shape_46.setTransform(64.3,567.8);

    this.shape_47 = new cjs.Shape();
    this.shape_47.graphics.f("#999999").s().p("AgNAiQgHgFgCgJIAPgGIABADIABADIACADIACACIACAAQADAAAAgEIAAgDIgCgDIgCgDIgDgDIgDgDIgEgDIgKgKQgDgFAAgGQAAgFACgEQACgEAEgDIAIgEIAIgBIAIACIAHAFIAFAHQACADABAEIgOAFIgBgDIgCgDIgCgDIgCgBIgDgBQAAAAAAAAQAAAAgBAAQAAAAAAABQgBAAAAAAIgBADQAAADADADIAGAIIAEADIAFAEIAEAFQADADABADIABAHQAAAJgHAGQgGAGgKAAQgHAAgHgGg");
    this.shape_47.setTransform(56.4,567.8);

    this.shape_48 = new cjs.Shape();
    this.shape_48.graphics.f("#999999").s().p("AAEAnIAAg5QAAgGgDABIgBAAIAAAAIAAABIgBAAIAAABIgBAAIgBABIAAAAIAAAAIAAA7IgUAAIAAhMIAUAAIAAAGQACgDADgCQAEgCAFAAQAEAAADACIAFAHIABAIIAAA8g");
    this.shape_48.setTransform(50.9,567.7);

    this.shape_49 = new cjs.Shape();
    this.shape_49.graphics.f("#999999").s().p("AgLAlQgFgCgEgFQgDgFAAgHIAAgfQAAgMAGgHQAGgHALAAQAMAAAGAHQAGAHAAAMIAAAfQAAAKgHAGQgHAGgKAAQgFAAgGgDgAgDgSIAAAlIAAACIAAACIABABIACABQAEAAAAgGIAAglQAAgGgEAAQgDAAAAAGg");
    this.shape_49.setTransform(45.1,567.8);

    this.shape_50 = new cjs.Shape();
    this.shape_50.graphics.f("#999999").s().p("AgJAzIAAhMIATAAIAABMgAgJgfIAAgTIATAAIAAATg");
    this.shape_50.setTransform(40.7,566.5);

    this.shape_51 = new cjs.Shape();
    this.shape_51.graphics.f("#999999").s().p("AAAAyIgEgCIgDgDIgCgFIgCgFIAAgFIAAgGIAAgkIgGAAIAAgNIAGAAIAAgZIASAAIAAAZIAKAAIAAANIgKAAIAAApQAAAAAAABQAAABABAAQAAABAAAAQAAABABAAQAAABAAAAQABAAAAABQABAAAAAAQABAAABAAIAFAAIAAAPQgDABgJAAIgGgBg");
    this.shape_51.setTransform(37.2,566.6);

    this.shape_52 = new cjs.Shape();
    this.shape_52.graphics.f("#999999").s().p("AgJAzIAAhMIATAAIAABMgAgJgfIAAgTIATAAIAAATg");
    this.shape_52.setTransform(33.7,566.5);

    this.shape_53 = new cjs.Shape();
    this.shape_53.graphics.f("#999999").s().p("AgTAxQgEgFAAgHIAAgsQAAgHAEgFQAFgGAHAAIAHABQACACACAEIAAgiIAUAAIAABoIgUAAIAAgGQgCADgCADQgEACgEAAQgGgBgFgEgAgDgFIAAAnIAAACIABACIACABQABAAADgEIAAgpQgDgFgBABQgDgBAAAGg");
    this.shape_53.setTransform(29.2,566.4);

    this.shape_54 = new cjs.Shape();
    this.shape_54.graphics.f("#999999").s().p("AAEAnIAAg5QAAgGgDABIgBAAIAAAAIAAABIgBAAIAAABIgBAAIgBABIAAAAIAAAAIAAA7IgUAAIAAhMIAUAAIAAAGQACgDADgCQAEgCAFAAQAEAAADACIAFAHIABAIIAAA8g");
    this.shape_54.setTransform(23.4,567.7);

    this.shape_55 = new cjs.Shape();
    this.shape_55.graphics.f("#999999").s().p("AgLAlQgGgCgDgFQgDgFAAgHIAAgfQAAgMAGgHQAFgHAMAAQAMAAAGAHQAGAHAAAMIAAAfQAAAKgHAGQgHAGgKAAQgFAAgGgDgAgDgSIAAAlIAAACIAAACIABABIACABQAEAAAAgGIAAglQAAgGgEAAQgDAAAAAGg");
    this.shape_55.setTransform(17.6,567.8);

    this.shape_56 = new cjs.Shape();
    this.shape_56.graphics.f("#999999").s().p("AgKA1QgGgCgDgDQgEgEgCgFQgDgEAAgGIgBgLIAAgiQAAgmAdAAQAHAAAFACQAFACADADQAEADACAEIADAKIABALIAAAJIgVAAIAAgJIAAgFIgBgFIgBgEIgCgDIgFgBQgIAAAAAPIAAAtQAAAPAIAAQABAAABAAQABAAAAAAQABAAAAgBQABAAAAAAQACgCABgDIABgFIAAgHIAAgLIAVAAIAAAJIgBALIgDAKQgCAFgDADQgDAEgGACQgFACgHAAQgFAAgFgCg");
    this.shape_56.setTransform(11.3,566.3);

    this.shape_57 = new cjs.Shape();
    this.shape_57.graphics.f("#999999").s().p("AgYAwQgGgHAAgLQAAgPANgPQgJgUAAgKQAAgKAFgHQAGgHAKAAQAJAAAHAGQAGAGABALQgBAJgEAIQgEAIgIAHIALATQACgHAAgLIAQAAQAAAKgBAHQgDAHgEAHIAEADIAFABIAAARIgDAAQgHAAgKgIQgDAEgGACQgEADgFAAQgLAAgGgHgAgLAVIgBAHQAAAFACAEQAAAAAAABQAAABABAAQAAAAABABQAAAAABAAQAFAAADgGQgHgLgDgHQgCABAAAEgAgIgeQAAAJADAKIAFgJQABgGAAgEQAAgEgBgCQAAgDgEAAQgEAAAAAJg");
    this.shape_57.setTransform(88.1,548.6);

    this.shape_58 = new cjs.Shape();
    this.shape_58.graphics.f("#999999").s().p("AgNAiQgHgFgCgJIAPgGIABADIABADIACADIACACIACAAQADAAAAgEIAAgDIgCgDIgCgDIgDgDIgDgDIgEgDIgKgKQgDgFAAgGQAAgFACgEQACgEAEgDIAIgEIAIgBIAIACIAHAFIAFAHQACADABAEIgOAFIgBgDIgCgDIgCgDIgCgBIgDgBQAAAAAAAAQAAAAgBAAQAAAAAAABQgBAAAAAAIgBADQAAADADADIAGAIIAEADIAFAEIAEAFQADADABADIABAHQAAAJgHAGQgGAGgKAAQgHAAgHgGg");
    this.shape_58.setTransform(79.6,550);

    this.shape_59 = new cjs.Shape();
    this.shape_59.graphics.f("#999999").s().p("AASAnIAAg5IAAgBIAAgCIgBgCIgCgBQgCAAgDAFIAAA6IgTAAIAAg5QAAgGgCAAQgDAAgDAFIAAA6IgUAAIAAhLIAUAAIAAAFQADgDAEgCQADgCAEAAQADAAADACQAEADABAEQADgEAEgDQAFgCAEAAQAEAAAEACQADADABAEIACAIIAAA8g");
    this.shape_59.setTransform(72.7,550);

    this.shape_60 = new cjs.Shape();
    this.shape_60.graphics.f("#999999").s().p("AgRAnIAAhMIATAAIAAAGQAEgHAGAAIAGABIAAAQIgIAAQgEAAgCACQgCADAAAEIAAAzg");
    this.shape_60.setTransform(66.5,550);

    this.shape_61 = new cjs.Shape();
    this.shape_61.graphics.f("#999999").s().p("AgQAiQgHgGAAgKIAAgfQAAgMAHgHQAFgHALAAQAMAAAGAHQAGAHgBAMIAAAPIgaAAIAAARQAAAGADAAQAEAAAAgHIAAgIIATAAIAAAIQAAAKgGAGQgIAGgJAAQgIAAgIgGgAgDgSIAAAKIAHAAIAAgKQAAgGgEAAQgDAAAAAGg");
    this.shape_61.setTransform(61.5,550);

    this.shape_62 = new cjs.Shape();
    this.shape_62.graphics.f("#999999").s().p("AgKA1IAAhZIgPAAIAAgQIAzAAIAAAQIgQAAIAABZg");
    this.shape_62.setTransform(56.1,548.6);

    this.shape_63 = new cjs.Shape();
    this.shape_63.graphics.f("#999999").s().p("AgVA2IAghrIALAAIggBrg");
    this.shape_63.setTransform(48.5,548.5);

    this.shape_64 = new cjs.Shape();
    this.shape_64.graphics.f("#999999").s().p("AgbAWQAAgJACgGQABgGAGgDQgIgIAAgPQAAgNAHgIQAHgIAMAAQANAAAHAIQAHAIAAANQAAAPgIAIIAFAEIADAGIABAHIAAAHIgBANIgFAKQgDAFgGACQgFADgIAAQgbAAAAghgAgHAXIAAADIAAACIAAADIABADIACACIACACIACAAIADgBIADgBIABgCIABgDIAAgDIABgCIAAgDQAAgRgJAAQgHAAAAARgAgCglIgCAEIgBADIgBAEIAAADIABAEIAAADIABAEIACACIACABIADgBIABgCIACgCIAAgDIABgEIAAgDIAAgCQAAgMgHAAIgCABg");
    this.shape_64.setTransform(40.1,548.6);

    this.shape_65 = new cjs.Shape();
    this.shape_65.graphics.f("#999999").s().p("AgEA1IAAhOIgKAAIAAgPIAEgCIAEgDIADgCIADgFIAPAAIAABpg");
    this.shape_65.setTransform(34.8,548.6);

    this.shape_66 = new cjs.Shape();
    this.shape_66.graphics.f("#999999").s().p("AgFASIAAgLIgMAAIAAgMIAMAAIAAgMIALAAIAAAMIAMAAIAAAMIgMAAIAAALg");
    this.shape_66.setTransform(30.7,549.8);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_66},{t:this.shape_65},{t:this.shape_64},{t:this.shape_63},{t:this.shape_62},{t:this.shape_61},{t:this.shape_60},{t:this.shape_59},{t:this.shape_58},{t:this.shape_57},{t:this.shape_56},{t:this.shape_55},{t:this.shape_54},{t:this.shape_53},{t:this.shape_52},{t:this.shape_51},{t:this.shape_50},{t:this.shape_49},{t:this.shape_48},{t:this.shape_47},{t:this.shape_46},{t:this.shape_45},{t:this.shape_44},{t:this.shape_43},{t:this.shape_42},{t:this.shape_41},{t:this.shape_40},{t:this.shape_39},{t:this.shape_38},{t:this.shape_37},{t:this.shape_36},{t:this.shape_35},{t:this.shape_34},{t:this.shape_33},{t:this.shape_32},{t:this.shape_31},{t:this.shape_30},{t:this.shape_29},{t:this.shape_28},{t:this.shape_27},{t:this.shape_26},{t:this.shape_25}]}).wait(100));

    // Get
    this.shape_67 = new cjs.Shape();
    this.shape_67.graphics.f("#FFFFFF").s().p("AgVBuIAAi6IggAAIAAghIBrAAIAAAhIgfAAIAAC6g");
    this.shape_67.setTransform(73,345.4);

    this.shape_68 = new cjs.Shape();
    this.shape_68.graphics.f("#FFFFFF").s().p("AgtBuIAAjbIBbAAIAAAfIguAAIAAA7IAgAAIAAAfIggAAIAABDIAuAAIAAAfg");
    this.shape_68.setTransform(62.5,345.4);

    this.shape_69 = new cjs.Shape();
    this.shape_69.graphics.f("#FFFFFF").s().p("AgdBuQgKgFgGgHQgHgHgEgKQgEgJgCgKQgCgKAAgLIAAhMQAAhOBAAAQANAAALADQALAEAHAGQAHAHAFAJQAFAJACALQACALAAANIAAANIgrAAIAAgPIAAgKIgCgKIgDgJQgCgDgEgDQgEgCgFAAQgUAAAAAhIAABdQAAAhAUAAQAUAAAAgiIAAgRIgYAAIAAgfIBFAAIAABwIgfAAIgGgQQgFAJgLAGQgKAFgKAAQgMAAgJgEg");
    this.shape_69.setTransform(49.1,345.4);

    this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_69},{t:this.shape_68},{t:this.shape_67}]}).wait(100));

    // BG
    this.instance_10 = new lib._120x600_1();
    this.instance_10.parent = this;

    this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(100));

    }).prototype = p = new cjs.MovieClip();
    p.nominalBounds = new cjs.Rectangle(29.3,300,184.8,600);
    // library properties:
    lib.properties = {
    width: 120,
    height: 600,
    fps: 24,
    color: "#FFFFFF",
    opacity: 1.00,
    webfonts: {},
    manifest: [{/literal}
    { src:"{url('/')}/html5-asset/netbetcom/sport/banner/images/img.png", id:"120x600_atlas_"} {literal}
    ],
    preloads: []
    };

    })(lib = lib||{}, images = images||{}, createjs = createjs||{}, ss = ss||{}, AdobeAn = AdobeAn||{});
    var lib, images, createjs, ss, AdobeAn;
    {/literal}
</script>