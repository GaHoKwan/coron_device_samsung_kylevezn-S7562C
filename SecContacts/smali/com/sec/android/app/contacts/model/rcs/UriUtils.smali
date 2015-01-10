.class public final Lcom/sec/android/app/contacts/model/rcs/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractLookupPart(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "contactLookupUri"

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 10
    .local v1, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 11
    .local v2, segmentsNo:I
    const/4 v0, 0x0

    .line 13
    .local v0, lookupString:Ljava/lang/String;
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 14
    add-int/lit8 v3, v2, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lookupString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 16
    .restart local v0       #lookupString:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static rcsServiceUriFromContactLookupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/sec/android/app/contacts/model/rcs/UriUtils;->extractLookupPart(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, lookupString:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 25
    .local v1, serviceUri:Landroid/net/Uri;
    return-object v1
.end method
