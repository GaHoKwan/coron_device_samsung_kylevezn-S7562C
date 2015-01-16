.class public Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;
.super Ljava/lang/Object;
.source "SmartCardPolicy.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "SmartCardPolicy"

    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method
