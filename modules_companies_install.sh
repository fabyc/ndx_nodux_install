#!/bin/bash

# NODUX: Needed modules for companies with Electronic Invoice


# Core modules: 25 modules
modulos_core=(
    'account' \
    'account_credit_limit' \
    'account_invoice' \
    'account_invoice_stock' \
    'account_payment' \
    'account_product' \
    'account_statement' \
    'bank' \
    'carrier' \
    'company' \
    'country' \
    'currency' \
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


# Nodux modules: 28 modules
modulos_nodux=(
    'nodux_account_ats' \
    'nodux_account_bank_reconciliation' \
    'nodux_account_debit_note_ec' \
    'nodux_account_delivery_note' \
    'nodux_account_ec' \
    'nodux_account_electronic_invoice_ec' \
    'nodux_account_invoice_multisequence' \
    'nodux_account_niif_ec' \
    'nodux_account_payment' \
    'nodux_account_postdated_check' \
    'nodux_account_statement' \
    'nodux_account_voucher_ec' \
    'nodux_account_voucher_transfer_ec' \
    'nodux_account_withholding_in_ec' \
    'nodux_account_withholding_out_ec' \
    'nodux_party_ec' \
    'nodux_product_barcode' \
    'nodux_product_price_list_percentage' \
    'nodux_purchase_default_warehouse' \
    'nodux_purchase_shipment' \
    'nodux_reports' \
    'nodux_sale_credit_limit' \
    'nodux_sale_payment' \
    'nodux_sale_payment_term' \
    'nodux_sale_pos' \
    'nodux_sale_pos_discount' \
    'nodux_sale_pos_electronic_invoice_ec' \
    'nodux_stock_remission_guide')

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
