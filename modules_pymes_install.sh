#!/bin/bash

# NODUX: Needed modules for pymes


# Core modules: 21 modules
modulos_core=(
    'account' \
    'account_invoice' \
    'account_invoice_history' \
    'account_invoice_stock' \
    'account_product' \
    'account_statement' \
    'bank' \
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


# Nodux modules: 6 modules
modulos_nodux=(
    'nodux_account_ec_pymes' \
    'nodux_account_invoice_multisequence' \
    'nodux_account_niif_ec' \
    'nodux_party_ec' \
    'nodux_sale_payment' \
    'nodux_sale_pos')

for i in "${modulos_nodux[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone https://bitbucket.org/nodux/$i $i
done


# Trytonspain modules: 1 module
modulos_trytonspain=(
    'sale_payment')

for i in "${modulos_trytonspain[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/trytonspain/trytond-$i $i
done


# Zikzakmedia modules: 4 modules
modulos_zikzakmedia=(
    'sale_pos' \
    'sale_product_stock' \
    'sale_product_stock_shop' \
    'sale_shop')

for i in "${modulos_zikzakmedia[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/zikzakmedia/trytond-$i $i
done
