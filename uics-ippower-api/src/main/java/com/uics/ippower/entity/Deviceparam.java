package com.uics.ippower.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.dubbo.x.entity.Idable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import java.util.Date;

/**
 * 设备参数
 * <p>
* Created by tom on 2017-01-05 16:43:33.
 */
@Entity
@Table(name = "t_deviceparam")
@ApiModel("设备参数")
public class Deviceparam implements Idable {
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    @Id
    @Column(name = "Dp_index", columnDefinition = "")
    private Integer DpIndex;
    public Integer getDpIndex() {
        return DpIndex;
    }
    public void setDpIndex(Integer DpIndex) {
        this.DpIndex = DpIndex;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "Dp_id", columnDefinition = "")
    private Integer DpId;
    public Integer getDpId() {
        return DpId;
    }
    public void setDpId(Integer DpId) {
        this.DpId = DpId;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dt_typeid", columnDefinition = "")
    private Integer dtTypeid;
    public Integer getDtTypeid() {
        return dtTypeid;
    }
    public void setDtTypeid(Integer dtTypeid) {
        this.dtTypeid = dtTypeid;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_cmdup", columnDefinition = "")
    private Integer dpCmdup;
    public Integer getDpCmdup() {
        return dpCmdup;
    }
    public void setDpCmdup(Integer dpCmdup) {
        this.dpCmdup = dpCmdup;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_cmddown", columnDefinition = "")
    private Integer dpCmddown;
    public Integer getDpCmddown() {
        return dpCmddown;
    }
    public void setDpCmddown(Integer dpCmddown) {
        this.dpCmddown = dpCmddown;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_paramname", columnDefinition = "")
    private String dpParamname;
    public String getDpParamname() {
        return dpParamname;
    }
    public void setDpParamname(String dpParamname) {
        this.dpParamname = dpParamname;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_paramdesc", columnDefinition = "")
    private String dpParamdesc;
    public String getDpParamdesc() {
        return dpParamdesc;
    }
    public void setDpParamdesc(String dpParamdesc) {
        this.dpParamdesc = dpParamdesc;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_paramdesc_en", columnDefinition = "")
    private String dpParamdescEn;
    public String getDpParamdescEn() {
        return dpParamdescEn;
    }
    public void setDpParamdescEn(String dpParamdescEn) {
        this.dpParamdescEn = dpParamdescEn;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_type", columnDefinition = "")
    private Integer dpType;
    public Integer getDpType() {
        return dpType;
    }
    public void setDpType(Integer dpType) {
        this.dpType = dpType;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_datatype", columnDefinition = "")
    private Integer dpDatatype;
    public Integer getDpDatatype() {
        return dpDatatype;
    }
    public void setDpDatatype(Integer dpDatatype) {
        this.dpDatatype = dpDatatype;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_adjustk", columnDefinition = "")
    private double dpAdjustk;
    public double getDpAdjustk() {
        return dpAdjustk;
    }
    public void setDpAdjustk(double dpAdjustk) {
        this.dpAdjustk = dpAdjustk;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_adjustb", columnDefinition = "")
    private double dpAdjustb;
    public double getDpAdjustb() {
        return dpAdjustb;
    }
    public void setDpAdjustb(double dpAdjustb) {
        this.dpAdjustb = dpAdjustb;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_unit", columnDefinition = "")
    private String dpUnit;
    public String getDpUnit() {
        return dpUnit;
    }
    public void setDpUnit(String dpUnit) {
        this.dpUnit = dpUnit;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_memo", columnDefinition = "")
    private String dpMemo;
    public String getDpMemo() {
        return dpMemo;
    }
    public void setDpMemo(String dpMemo) {
        this.dpMemo = dpMemo;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_func_typeid", columnDefinition = "")
    private String dpFuncTypeid;
    public String getDpFuncTypeid() {
        return dpFuncTypeid;
    }
    public void setDpFuncTypeid(String dpFuncTypeid) {
        this.dpFuncTypeid = dpFuncTypeid;
    }
    
    /**
     * 
     */
    @ApiModelProperty(value = "", required = false)
    
    @Column(name = "dp_warnid", columnDefinition = "")
    private String dpWarnid;
    public String getDpWarnid() {
        return dpWarnid;
    }
    public void setDpWarnid(String dpWarnid) {
        this.dpWarnid = dpWarnid;
    }
    
}

