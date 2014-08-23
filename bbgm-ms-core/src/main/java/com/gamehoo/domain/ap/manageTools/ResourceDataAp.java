package com.gamehoo.domain.ap.manageTools;

public class ResourceDataAp extends RankAndDateSearchAp {
    private String resourceType;
    private String oid;

    public String getResourceType() {
        return resourceType;
    }

    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }
}
