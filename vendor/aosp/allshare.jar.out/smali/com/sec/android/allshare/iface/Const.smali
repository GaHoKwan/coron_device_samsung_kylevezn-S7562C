.class public Lcom/sec/android/allshare/iface/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final ALLSHARE_FRAMEWORK_VERSION:J = 0x1L

.field public static final CP_NAME:Ljava/lang/String; = "com.sec.android.allshare.CpName"

.field public static DEV_MODE:Z = false

.field public static final SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String; = "com.sec.android.allshare.framework.ServiceManager"

.field public static final SET_NAME_MESSAGE:Ljava/lang/String; = "com.sec.android.allshare.framework.AllShareCpName"

.field public static final START_MESSAGE:Ljava/lang/String; = "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

.field public static final START_SERVICE:Ljava/lang/String; = "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

.field public static final STOP_MESSAGE:Ljava/lang/String; = "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

.field public static final SUBSCRIBER_FIELD:Ljava/lang/String; = "com.sec.android.allshare.iface.subscriber"

.field public static final SUBSCRIPTION_MESSAGE:Ljava/lang/String; = "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
