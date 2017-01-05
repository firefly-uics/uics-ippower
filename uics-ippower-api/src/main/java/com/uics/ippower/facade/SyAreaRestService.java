package com.uics.ippower.facade;

import org.dubbo.x.facade.CURDRestService;
import org.dubbo.x.facade.RestResult;
import org.dubbo.x.util.ConstantVariable;
import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.uics.ippower.entity.SyArea;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * 区域 接口
 *
* Created by tom on 2017-01-05 10:27:49.
 */

@Path("syareas")
@Consumes({MediaType.APPLICATION_JSON})
@Produces({ContentType.APPLICATION_JSON_UTF_8})
@Api(value="syareas", description = "区域接口")
public interface SyAreaRestService extends CURDRestService<SyArea>{
    /**
     * 区域
     * @return
     */
    @GET
    @Path("")
    @ApiOperation(value = "区域",
            notes = "区域列表.")
    RestResult<List<SyArea>> list(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token);

    /**
     * 区域 详细信息
     *
     * @return
     */
    @GET
    @Path("/{id}")
    @ApiOperation(value = "详细信息",
            notes = "区域详细信息.")
    RestResult<SyArea> detail(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);

    @POST
    @Path("")
    @ApiOperation(value = "添加/修改区域", notes = "添加/修改区域")
    RestResult<SyArea> create(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token,SyArea syArea);

    @DELETE
    @Path("/{id}")
    @ApiOperation(value = "删除区域", notes = "删除区域")
    RestResult<String> delete(@HeaderParam(ConstantVariable.HEADER_AUTHORIZATION_KEY) String token, @ApiParam("id") @PathParam("id") String uuid);
}
