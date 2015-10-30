/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.meter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.eospd.entity.meter.Meter;
import com.thinkgem.jeesite.modules.eospd.service.meter.MeterService;

/**
 * 仪表信息Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/meter/meter")
public class MeterController extends BaseController {

	@Autowired
	private MeterService meterService;
	
	@ModelAttribute
	public Meter get(@RequestParam(required=false) String id) {
		Meter entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = meterService.get(id);
		}
		if (entity == null){
			entity = new Meter();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:meter:meter:view")
	@RequestMapping(value = {"list", ""})
	public String list(Meter meter, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Meter> page = meterService.findPage(new Page<Meter>(request, response), meter); 
		model.addAttribute("page", page);
		return "modules/eospd/meter/meterList";
	}

	@RequiresPermissions("eospd:meter:meter:view")
	@RequestMapping(value = "form")
	public String form(Meter meter, Model model) {
		model.addAttribute("meter", meter);
		return "modules/eospd/meter/meterForm";
	}

	@RequiresPermissions("eospd:meter:meter:edit")
	@RequestMapping(value = "save")
	public String save(Meter meter, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, meter)){
			return form(meter, model);
		}
		meterService.save(meter);
		addMessage(redirectAttributes, "保存仪表信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter/meter/?repage";
	}
	
	@RequiresPermissions("eospd:meter:meter:edit")
	@RequestMapping(value = "delete")
	public String delete(Meter meter, RedirectAttributes redirectAttributes) {
		meterService.delete(meter);
		addMessage(redirectAttributes, "删除仪表信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter/meter/?repage";
	}

}