package com.baizhi.entity;

public class User {
    private int id;
    private String name;
    private String password;
    private String cardNo;
    private String tel;
    private String address;
    private String postNumber;
    private int isAdmin;
    private String question;
    private String answer;

    public User() {
        super();
    }

    public User(int id, String name, String password, String cardNo, String tel, String address, String postNumber, int isAdmin, String question, String answer) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.cardNo = cardNo;
        this.tel = tel;
        this.address = address;
        this.postNumber = postNumber;
        this.isAdmin = isAdmin;
        this.question = question;
        this.answer = answer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostNumber() {
        return postNumber;
    }

    public void setPostNumber(String postNumber) {
        this.postNumber = postNumber;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", cardNo='" + cardNo + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", postNumber='" + postNumber + '\'' +
                ", isAdmin=" + isAdmin +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                '}';
    }
}
