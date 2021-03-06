{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2015 PrestaShop SA
*  @version  Release: 0.4.4
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{capture name=path}
    {l s='Cash on delivery by SEUR' mod='seurcashondelivery'}
{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<h2>{l s='Order details' mod='seurcashondelivery'}</h2>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{if $nbProducts <= 0}
	<p class="warning">{l s='Cash on delivery by SEUR' mod='seurcashondelivery'} {l s='Your cart is empty.' mod='seurcashondelivery'}</p>
{else}

<h3>{l s='Cash on delivery by SEUR' mod='seurcashondelivery'}</h3>
<form action="{$this_path_ssl|escape:'htmlall':'UTF-8'}validation.php" method="post">
        <p>
                <img src="{$this_path|escape:'htmlall':'UTF-8'}img/logoSeur.png" alt="{l s='Cash on delivery by SEUR' mod='seurcashondelivery'}" width="86" height="49" style="float:left; margin: 0px 10px 5px 0px;" />
                {l s='You have chosen the cash on delivery method by SEUR.' mod='seurcashondelivery'}
                <br/><br />
                {l s='This is a short summary of your order:' mod='seurcashondelivery'}
        </p>
        <div class="clear">
        <p style="margin-top:20px;">
                - {l s='Additional fee:' mod='seurcashondelivery'}
                <span id="amount" class="price">{displayPrice price=$cart_Amount|floatval}</span>
                {if $use_taxes == 1}
                {l s='(IVA Incl.)' mod='seurcashondelivery'}
            {/if}
        </p>
        <p style="margin-top:20px;">
                - {l s='The total of your order is:' mod='seurcashondelivery'}
                <span id="amount" class="price">{displayPrice price=$total|floatval}</span>
                {if $use_taxes == 1}
                {l s='(IVA Incl.)' mod='seurcashondelivery'}
            {/if}
        </p>
        </div>
        <p><br /><br />
                <b>{l s='Please confirm your order by clicking on "confirm my order"' mod='seurcashondelivery'}.</b>
        </p>
        <p class="cart_navigation">
                <a href="{$link->getPageLink('order.php', true)|escape:'htmlall':'UTF-8'}?step=3" class="button_large hideOnSubmit">{l s='Other payment methods.' mod='seurcashondelivery'}</a>
                <input type="submit" name="submit" value="{l s='Confirm my order' mod='seurcashondelivery'}" class="exclusive_large hideOnSubmit" />
        </p>
</form>
{/if}
