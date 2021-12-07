/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Phong_learning
 */
public class ielts implements Serializable{
    public String ielts_question;
    public String ielts_answer;
    public float ielts_mark;

    public ielts(String ielts_question, String ielts_answer, float ielts_mark) {
        this.ielts_question = ielts_question;
        this.ielts_answer = ielts_answer;
        this.ielts_mark = ielts_mark;
    }

    public ielts() {
    }

    public String getIelts_question() {
        return ielts_question;
    }

    public void setIelts_question(String ielts_question) {
        this.ielts_question = ielts_question;
    }

    public String getIelts_answer() {
        return ielts_answer;
    }

    public void setIelts_answer(String ielts_answer) {
        this.ielts_answer = ielts_answer;
    }

    public float getIelts_mark() {
        return ielts_mark;
    }

    public void setIelts_mark(float ielts_mark) {
        this.ielts_mark = ielts_mark;
    }
    
}
