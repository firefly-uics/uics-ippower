package com.uics.ippower.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.uics.ippower.entity.Deviceparam;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 设备参数 接口
 *
* Created by tom on 2017-01-05 16:43:33.
 */

@Path("deviceparams")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="deviceparams", description = "设备参数接口")
public interface DeviceparamRestService extends CURDRestService<Deviceparam>{
    /**
     * 设备参数
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "设备参数",
            notes = "设备参数列表.")
    RestResult<List<Deviceparam>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 设备参数 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "设备参数详细信息.")
    RestResult<Deviceparam> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改设备参数", notes = "添加/修改设备参数")
    RestResult<Deviceparam> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,Deviceparam deviceparam);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除设备参数", notes = "删除设备参数")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
