#!/bin/bash

# NODUX: Needed modules for companies with Electronic Invoice


# Core modules: 26 modules
modulos_core=(
    'account' \
    'account_credit_limit' \
    'account_invoice' \
    'account_invoice_history' \
    'account_invoice_stock' \
    'account_product' \
    'account_statement' \
    'bank' \
    'carrier' \
    'company' \
    'country' \
    'currency' \
    'dashboard' \
    'party' \
    'product' \
    'product_cost_history' \
    'product_price_list' \
    'purchase' \
    'sale' \
    'sale_credit_limit' \
    'sale_invoice_grouping' \
    'sale_price_list' \
    'stock' \
    'stock_lot' \
    'stock_split' \
    'stock_supply')

for i in "${modulos_core[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/tryton/$i $i
done


# Nodux modules: 8 modules
modulos_nodux=(
    'nodux_account_ats' \
    'nodux_account_ec' \
    'nodux_account_electronic_invoice_ec' \
    'nodux_account_niif_ec' \
    'nodux_sale_payment' \
    'nodux_sale_pos_discount' \
    'nodux_sale_pos_electronic_invoice_ec' \
    'nodux_stock_remission_guide' \
    'nodux_sale_payment_term')

for i in "${modulos_nodux[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone https://bitbucket.org/nodux/$i $i
done


# Trytonspain modules: 3 modules
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


# Zikzakmedia modules: 5 modules
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
