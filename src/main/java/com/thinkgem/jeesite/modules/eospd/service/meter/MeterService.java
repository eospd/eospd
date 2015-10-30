/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.meter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.eospd.entity.meter.Meter;
import com.thinkgem.jeesite.modules.eospd.dao.meter.MeterDao;

/**
 * 仪表信息Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class MeterService extends CrudService<MeterDao, Meter> {

	
	public Meter get(String id) {
		Meter meter = super.get(id);
		return meter;
	}
	
	public List<Meter> findList(Meter meter) {
		return super.findList(meter);
	}
	
	public Page<Meter> findPage(Page<Meter> page, Meter meter) {
		return super.findPage(page, meter);
	}
	
	@Transactional(readOnly = false)
	public void save(Meter meter) {
		super.save(meter);
	}
	
	@Transactional(readOnly = false)
	public void delete(Meter meter) {
		super.delete(meter);
	}
	
}