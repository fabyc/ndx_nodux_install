#!/bin/bash

# Nodux: Needed modules for Toners Catamayo

# Modulos Core: 19 modules
modulos_core=(
    'account' \
    'account_invoice' \
    #'account_invoice_history' \
    'account_invoice_stock' \
    'account_product' \
    'account_statement' \
    'bank' \
    #'carrier' \
    'company' \
    'country' \
    'currency' \
    #'dashboard' \
    'party' \
    'product' \
    'product_cost_history' \
    'product_price_list' \
    'purchase' \
    'sale' \
    'sale_invoice_grouping' \
    'sale_price_list' \
    'stock' \
    'stock_supply')

for i in "${modulos_core[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/tryton/$i $i
done

# Modulos Nodux: 10 modules
modulos_nodux=(
    'nodux_account_ec_pymes' \
    #'nodux_account_electronic_invoice_ec' \
    'nodux_account_invoice_multisequence' \
    'nodux_account_niif_ec' \
    'nodux_account_statement' \
    'nodux_account_voucher_ec' \
    'nodux_party_ec' \
    'nodux_sale_payment' \
    'nodux_sale_pos' \
    'nodux_sale_pos_discount' \
    #'nodux_sale_pos_electronic_invoice_ec' \
    'nodux_stock_remission_guide')

for i in "${modulos_nodux[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone https://bitbucket.org/nodux/$i $i
done

# Modulos Trytonspain: 3 modules
modulos_trytonspain=(
    'account_invoice_discount' \
    'sale_discount' \
    'sale_payment')

for i in "${modulos_trytonspain[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/trytonspain/trytond-$i $i
done

# Modulos Zikzakmedia: 5 modules
modulos_zikzakmedia=(
    'sale_pos' \
    'sale_pos_discount' \
    'sale_product_stock' \
    'sale_product_stock_shop' \
    'sale_shop')

for i in "${modulos_zikzakmedia[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/zikzakmedia/trytond-$i $i
done
