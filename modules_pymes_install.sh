#!/bin/bash

# NODUX: Needed modules for pymes

# Modulos Core: 21 modulos
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
   :
   hg clone -b 3.4 https://bitbucket.org/tryton/$i $i
done

# Modulos Nodux: 3 modulos
modulos_nodux=(
    'nodux_account_ec_pymes' \
    'nodux_account_niif_ec' \
    'nodux_sale_payment' \

for i in "${modulos_nodux[@]}"
do
   :
   hg clone https://bitbucket.org/nodux/$i $i
done

# Modulos Trytonspain: 1 modulo
modulos_trytonspain=('sale_payment')

for i in "${modulos_trytonspain[@]}"
do
   :
   hg clone -b 3.4 https://bitbucket.org/trytonspain/trytond-$i $i
done

# Modulos Zikzakmedia: 4 modulos
modulos_zikzakmedia=(
    'sale_pos' \
    'sale_product_stock' \
    'sale_product_stock_shop' \
    'sale_shop')

for i in "${modulos_zikzakmedia[@]}"
do
   :
   hg clone -b 3.4 https://bitbucket.org/zikzakmedia/trytond-$i $i
done
