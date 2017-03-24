package com.prempoint.hello.rest.api;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import java.util.Date;

@Entity
public class User {

    @Id
    Long id;
    String name;
    String ip;
    Date date;

    public User(String name, String ip) {
        super();
        this.name = name;
        this.ip = ip;
        this.date = new Date();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }
}
