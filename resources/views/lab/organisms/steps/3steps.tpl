<div class="row">
    <div class="{$class|default:'col-xs-12 col-sm-12 col-md-4'}">
        <div class="step">
            <div class="row">
                <div class="{$stepNumberClass|default:'col-xs-12 col-sm-3'}">
                    <div class="number"><h2>1</h2></div>
                </div>
                <div class="{$stepTextClass|default:'col-xs-12 col-sm-9'}">
                    <h5 class="heading">{$step1}</h5>
                    <p class="text">{$step1text}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="{$class}">
        <div class="step">
            <div class="row">
                <div class="{$stepNumberClass|default:'col-xs-12 col-sm-3'}">
                    <div class="number"><h2>2</h2></div>
                </div>
                <div class="{$stepTextClass|default:'col-xs-12 col-sm-9'}">
                    <h5 class="heading">{$step2}</h5>
                    <p class="text">{$step2text}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="{$class}">
        <div class="step">
            <div class="row">
                <div class="{$stepNumberClass|default:'col-xs-12 col-sm-3'}">
                    <div class="number"><h2>3</h2></div>
                </div>
                <div class="{$stepTextClass|default:'col-xs-12 col-sm-9'}">
                    <h5 class="heading" >{$step3}</h5>
                    <p class="text">{$step3text}</p>
                </div>
            </div>
        </div>
    </div>
</div>

{* /*
{include
  file="lab/organisms/steps/3steps.tpl"
  class=#stepgrid#
  step1=#step1#
  step2=#step2#
  step3=#step3#
  step1text=#step1dec#
  step2text=#step2dec#
  step3text=#step3dec#
}
*/ *}
