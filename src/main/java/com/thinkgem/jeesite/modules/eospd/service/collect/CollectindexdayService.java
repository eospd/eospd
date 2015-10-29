/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.collect;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.collect.Collectindexday;
import com.thinkgem.jeesite.modules.eospd.dao.collect.CollectindexdayDao;

/**
 * 数据采集指标Service
 * @author denofiend
 * @version 2015-10-29
 */
@Service
@Transactional(readOnly = true)
public class CollectindexdayService extends CrudService<CollectindexdayDao, Collectindexday> {

	public Collectindexday get(String id) {
		return super.get(id);
	}
	
	public List<Collectindexday> findList(Collectindexday collectindexday) {
		return super.findList(collectindexday);
	}
	
	public Page<Collectindexday> findPage(Page<Collectindexday> page, Collectindexday collectindexday) {
		return super.findPage(page, collectindexday);
	}
	
	@Transactional(readOnly = false)
	public void save(Collectindexday collectindexday) {
		super.save(collectindexday);
	}
	
	@Transactional(readOnly = false)
	public void delete(Collectindexday collectindexday) {
		super.delete(collectindexday);
	}
	
}