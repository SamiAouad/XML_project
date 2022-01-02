/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_jexcel;

import static java.lang.Double.parseDouble;
import java.util.StringTokenizer;
import org.apache.poi.ss.usermodel.Row;

/**
 *
 * @author pc
 */
class Note {
    private String cne;
    private String codeModule;
    private double note1;    
    private double note2;

    public Note(Row row, int i, Row modules) {
        this.cne = row.getCell(0).getStringCellValue();
        this.codeModule =modules.getCell(i).getStringCellValue();
        StringTokenizer st = new StringTokenizer(row.getCell(i).getStringCellValue());
        if (st.hasMoreTokens())
            this.note1 = parseDouble(st.nextToken());
        if (st.hasMoreTokens())
            this.note2 = parseDouble(st.nextToken());
    }

    public String getCne() {
        return cne;
    }

    public String getCodeModule() {
        return codeModule;
    }

    public double getNote1() {
        return note1;
    }

    public double getNote2() {
        return note2;
    }

    @Override
    public String toString() {
        return "Note{" + "cne=" + cne + ", codeModule=" + codeModule + ", note1=" + note1 + ", note2=" + note2 + '}';
    }
    
    
}
