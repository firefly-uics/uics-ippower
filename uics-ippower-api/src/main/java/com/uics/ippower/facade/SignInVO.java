package com.uics.ippower.facade;

import com.uics.ippower.entity.From;
import org.codehaus.jackson.annotate.JsonProperty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 * 用户注册 输入
 * Created by baiqw on 16/1/21.
 */

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class SignInVO implements Serializable{

    @JsonProperty("username")
    @XmlElement(name = "username")
    @NotNull
    @Size(min = 1, max = 20)
    private String name;

    private String password;

    private From from;

    public From getFrom() {
        return from;
    }

    public void setFrom(From from) {
        this.from = from;
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

    @Override
    public String toString() {
        return "Account (" +
                "password=" + password +
                ", name='" + name + '\'' +
                ')';
    }
}
