/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.circuitinfo;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 电支路信息Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Circuitinfo extends DataEntity<Circuitinfo> {
	
	private static final long serialVersionUID = 1L;
	private String circuitid;		// 自增长ID
	private String circuiturl;		// 电支路URL
	private String circuitname;		// 电支路名称
	private String location;		// 所在位置
	private String switchratedc;		// 开关额定电流，单位：A
	private String levelv;		// 电压等级，单位：V
	private String designpower;		// 设计功率，单位：kw
	private String powerphase;		// 电源相数，1 or 3
	private String parentid;		// 上级电支路，0-动态，-1-没有，&gt;0-静态
	private String dynamicparent1id;		// 动态上级1
	private String dynamicparent2id;		// 动态上级2
	
	public Circuitinfo() {
		super();
	}

	public Circuitinfo(String id){
		super(id);
	}

	@Length(min=1, max=11, message="自增长ID长度必须介于 1 和 11 之间")
	public String getCircuitid() {
		return circuitid;
	}

	public void setCircuitid(String circuitid) {
		this.circuitid = circuitid;
	}
	
	@Length(min=1, max=200, message="电支路URL长度必须介于 1 和 200 之间")
	public String getCircuiturl() {
		return circuiturl;
	}

	public void setCircuiturl(String circuiturl) {
		this.circuiturl = circuiturl;
	}
	
	@Length(min=1, max=200, message="电支路名称长度必须介于 1 和 200 之间")
	public String getCircuitname() {
		return circuitname;
	}

	public void setCircuitname(String circuitname) {
		this.circuitname = circuitname;
	}
	
	@Length(min=1, max=200, message="所在位置长度必须介于 1 和 200 之间")
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	@Length(min=1, max=11, message="开关额定电流，单位：A长度必须介于 1 和 11 之间")
	public String getSwitchratedc() {
		return switchratedc;
	}

	public void setSwitchratedc(String switchratedc) {
		this.switchratedc = switchratedc;
	}
	
	@Length(min=1, max=11, message="电压等级，单位：V长度必须介于 1 和 11 之间")
	public String getLevelv() {
		return levelv;
	}

	public void setLevelv(String levelv) {
		this.levelv = levelv;
	}
	
	public String getDesignpower() {
		return designpower;
	}

	public void setDesignpower(String designpower) {
		this.designpower = designpower;
	}
	
	@Length(min=1, max=11, message="电源相数，1 or 3长度必须介于 1 和 11 之间")
	public String getPowerphase() {
		return powerphase;
	}

	public void setPowerphase(String powerphase) {
		this.powerphase = powerphase;
	}
	
	@Length(min=1, max=11, message="上级电支路，0-动态，-1-没有，&gt;0-静态长度必须介于 1 和 11 之间")
	public String getParentid() {
		return parentid;
	}

	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	
	@Length(min=1, max=11, message="动态上级1长度必须介于 1 和 11 之间")
	public String getDynamicparent1id() {
		return dynamicparent1id;
	}

	public void setDynamicparent1id(String dynamicparent1id) {
		this.dynamicparent1id = dynamicparent1id;
	}
	
	@Length(min=1, max=11, message="动态上级2长度必须介于 1 和 11 之间")
	public String getDynamicparent2id() {
		return dynamicparent2id;
	}

	public void setDynamicparent2id(String dynamicparent2id) {
		this.dynamicparent2id = dynamicparent2id;
	}
	
}