package com.uics.ippower.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.dubbo.x.entity.Idable;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Columns;


import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 区域
 * <p>
* Created by tom on 2017-01-05 10:27:49.
 */
@Entity
@Table(name = "sy_area")
@ApiModel("区域")
public class SyArea implements Idable {
    
    /**
     * 
     */

    @Id

    private Integer AreaId;
    @Column(name = "`AreaId`")
    public Integer getAreaId() {
        return AreaId;
    }
    @Column(name = "`AreaId`")
    public void setAreaId(Integer AreaId) {
        this.AreaId = AreaId;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "Fid", columnDefinition = "")
    private Integer Fid;
    public Integer getFid() {
        return Fid;
    }
    public void setFid(Integer Fid) {
        this.Fid = Fid;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "AreaName", columnDefinition = "")
    private String AreaName;
    public String getAreaName() {
        return AreaName;
    }
    public void setAreaName(String AreaName) {
        this.AreaName = AreaName;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "AreaProperty", columnDefinition = "")
    private Integer AreaProperty;
    public Integer getAreaProperty() {
        return AreaProperty;
    }
    public void setAreaProperty(Integer AreaProperty) {
        this.AreaProperty = AreaProperty;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "area_number", columnDefinition = "")
    private String areaNumber;
    public String getAreaNumber() {
        return areaNumber;
    }
    public void setAreaNumber(String areaNumber) {
        this.areaNumber = areaNumber;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "area_manager", columnDefinition = "")
    private String areaManager;
    public String getAreaManager() {
        return areaManager;
    }
    public void setAreaManager(String areaManager) {
        this.areaManager = areaManager;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "connect_phone", columnDefinition = "")
    private String connectPhone;
    public String getConnectPhone() {
        return connectPhone;
    }
    public void setConnectPhone(String connectPhone) {
        this.connectPhone = connectPhone;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "area_img", columnDefinition = "")
    private String areaImg;
    public String getAreaImg() {
        return areaImg;
    }
    public void setAreaImg(String areaImg) {
        this.areaImg = areaImg;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "area_order", columnDefinition = "")
    private Integer areaOrder;
    public Integer getAreaOrder() {
        return areaOrder;
    }
    public void setAreaOrder(Integer areaOrder) {
        this.areaOrder = areaOrder;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "area_text", columnDefinition = "")
    private String areaText;
    public String getAreaText() {
        return areaText;
    }
    public void setAreaText(String areaText) {
        this.areaText = areaText;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "isJF", columnDefinition = "")
    private Integer isJF;
    public Integer getIsJF() {
        return isJF;
    }
    public void setIsJF(Integer isJF) {
        this.isJF = isJF;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "slick_enable", columnDefinition = "")
    private Integer slickEnable;
    public Integer getSlickEnable() {
        return slickEnable;
    }
    public void setSlickEnable(Integer slickEnable) {
        this.slickEnable = slickEnable;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "sound_enable", columnDefinition = "")
    private Integer soundEnable;
    public Integer getSoundEnable() {
        return soundEnable;
    }
    public void setSoundEnable(Integer soundEnable) {
        this.soundEnable = soundEnable;
    }
    
    /**
     * 课室名称
     */
    @ApiModelProperty(value = "课室名称", required = false)
    
    @Column(name = "roomName", columnDefinition = "课室名称")
    private String roomName;
    public String getRoomName() {
        return roomName;
    }
    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "lineimage", columnDefinition = "")
    private String lineimage;
    public String getLineimage() {
        return lineimage;
    }
    public void setLineimage(String lineimage) {
        this.lineimage = lineimage;
    }
    
}

