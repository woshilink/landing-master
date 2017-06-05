{extends file="base/admin-base.tpl"}

{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}

{block name="head"}

    <style>
        .fade-enter-active, .fade-leave-active {
            transition-property: opacity;
            transition-duration: .25s;
        }

        .fade-enter-active {
            transition-delay: .25s;
        }

        .fade-enter, .fade-leave-active {
            opacity: 0
        }
    </style>
{/block}
{block name=body}
    <transition  name="fade">

            <router-view :landingApproveList="landingApproveList" :languages="languages" ></router-view>

    </transition>

{/block}
{block name=footer}
   <script src="{url('/')}/src/js/app.js"></script>
{/block}