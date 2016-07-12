#!/bin/bash

# NODUX: Needed modules for pymes


# Core modules: 19 modules
modulos_core=(
    'account' \
    'account_invoice' \
    'account_invoice_stock' \
    'account_payment' \
    'account_product' \
    'account_statement' \
    'bank' \
    'company' \
    'country' \
    'currency' \
    'party' \
    'product' \
    'product_cost_history' \
    'product_price_list' \
    'purchase' \
    'sale' \
    'sale_invoice_grouping' \
    'sale_price_list' \
    'stock')

for i in "${modulos_core[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/tryton/$i $i
done


# Nodux modules: 14 modules
modulos_nodux=(
    'nodux_account_ec_pymes' \
    'nodux_account_invoice_multisequence' \
    'nodux_account_niif_ec_pymes' \
    'nodux_account_payment' \
    'nodux_account_statement' \
    'nodux_account_voucher_ec' \
    'nodux_account_withholding_out_ec' \
    'nodux_party_ec' \
    'nodux_product_price_list_percentage' \
    'nodux_purchase_shipment' \
    'nodux_reports' \
    'nodux_sale_payment' \
    'nodux_sale_pos' \
    'nodux_sale_pos_discount')

for i in "${modulos_nodux[@]}"
do
echo 'Cloning "'$i'" module ...'
    :
    hg clone -b 3.4 https://bitbucket.org/nodux/$i $i
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


# Zikzakmedia modules: 6 modules
modulos_zikzakmedia=(
    'product_price_list_category' \
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
