package com.prefabsoft.web;

import com.prefabsoft.domain.FakeDomainEntity;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "fakedomainentitys", formBackingObject = FakeDomainEntity.class)
@RequestMapping("/fakedomainentitys")
@Controller
public class FakeDomainEntityController {
}
