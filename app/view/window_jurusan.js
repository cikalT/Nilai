/*
 * File: app/view/window_jurusan.js
 *
 * This file was generated by Sencha Architect version 3.1.0.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Ext JS 4.2.x library, under independent license.
 * License of Sencha Architect does not include license for Ext JS 4.2.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('SistemInformasiNilai.view.window_jurusan', {
    extend: 'Ext.window.Window',
    alias: 'widget.window_jurusan',

    requires: [
        'Ext.form.Panel',
        'Ext.form.field.Hidden',
        'Ext.form.field.Text',
        'Ext.button.Button'
    ],

    height: 150,
    width: 400,
    title: 'Window Jurusan',
    modal: true,

    initComponent: function() {
        var me = this;

        Ext.applyIf(me, {
            items: [
                {
                    xtype: 'form',
                    bodyPadding: 10,
                    title: '',
                    items: [
                        {
                            xtype: 'hiddenfield',
                            anchor: '100%',
                            fieldLabel: 'Label',
                            name: 'IDJur_'
                        },
                        {
                            xtype: 'textfield',
                            anchor: '100%',
                            fieldLabel: 'Nama Jurusan',
                            name: 'NamaJur_'
                        }
                    ]
                },
                {
                    xtype: 'container',
                    layout: {
                        type: 'hbox',
                        align: 'stretch',
                        pack: 'end'
                    },
                    items: [
                        {
                            xtype: 'button',
                            cls: 'btnWindowBatal',
                            itemId: 'btnWindowJurusanBatal',
                            style: '{\n    background: #ff2d55;\n    border: none;\n}',
                            text: 'Batal'
                        },
                        {
                            xtype: 'button',
                            cls: 'btnWindowSimpan',
                            itemId: 'btnWindowJurusanSimpan',
                            style: '{\n    background: #4cd964;\n    border: none;\n}',
                            text: 'Simpan'
                        }
                    ]
                }
            ]
        });

        me.callParent(arguments);
    }

});