.class public final Ljava/security/AllPermission;
.super Ljava/security/Permission;
.source "AllPermission.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 24
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
