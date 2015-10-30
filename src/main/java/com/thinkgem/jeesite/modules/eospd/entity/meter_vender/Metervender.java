/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.entity.meter_vender;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 仪表厂家信息Entity
 * @author denofiend
 * @version 2015-10-30
 */
public class Metervender extends DataEntity<Metervender> {
	
	private static final long serialVersionUID = 1L;
	private String venderid;		// 厂家ID
	private String vendername;		// 厂家名称
	private String venderaddr;		// 厂家地址
	private String contactphone;		// 厂家联系电话
	private String contactperson;		// 厂家联系人
	private Date inserttime;		// 入库时间
	private Date updatetime;		// 更新时间
	
	public Metervender() {
		super();
	}

	public Metervender(String id){
		super(id);
	}

	@Length(min=1, max=11, message="厂家ID长度必须介于 1 和 11 之间")
	public String getVenderid() {
		return venderid;
	}

	public void setVenderid(String venderid) {
		this.venderid = venderid;
	}
	
	@Length(min=1, max=100, message="厂家名称长度必须介于 1 和 100 之间")
	public String getVendername() {
		return vendername;
	}

	public void setVendername(String vendername) {
		this.vendername = vendername;
	}
	
	@Length(min=1, max=100, message="厂家地址长度必须介于 1 和 100 之间")
	public String getVenderaddr() {
		return venderaddr;
	}

	public void setVenderaddr(String venderaddr) {
		this.venderaddr = venderaddr;
	}
	
	@Length(min=1, max=40, message="厂家联系电话长度必须介于 1 和 40 之间")
	public String getContactphone() {
		return contactphone;
	}

	public void setContactphone(String contactphone) {
		this.contactphone = contactphone;
	}
	
	@Length(min=1, max=10, message="厂家联系人长度必须介于 1 和 10 之间")
	public String getContactperson() {
		return contactperson;
	}

	public void setContactperson(String contactperson) {
		this.contactperson = contactperson;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="入库时间不能为空")
	public Date getInserttime() {
		return inserttime;
	}

	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="更新时间不能为空")
	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
}