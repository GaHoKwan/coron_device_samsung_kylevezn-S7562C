.class public Landroid/app/enterprise/CallingPolicy;
.super Ljava/lang/Object;
.source "CallingPolicy.java"


# static fields
.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ICallingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "CallingPolicy"

    sput-object v0, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "calling_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ICallingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ICallingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    .line 48
    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldPwd"
    .parameter "newPwd"

    .prologue
    .line 184
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ICallingPolicy;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "changeBarringPassword - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallBarringOption(Ljava/lang/String;)Z
    .locals 3
    .parameter "cbFacility"

    .prologue
    .line 163
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallBarringOption(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallForwardingOption(I)Ljava/lang/String;
    .locals 4
    .parameter "cfReason"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, output:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallForwardingOption(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const-string v1, "Failed talking with Phone service"

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "cbAction"
    .parameter "cbFacility"
    .parameter "password"

    .prologue
    .line 142
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/ICallingPolicy;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallForwardingOption(ZILjava/lang/String;I)Z
    .locals 4
    .parameter "cfAction"
    .parameter "cfReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, output:Z
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/enterprise/ICallingPolicy;->setCallForwardingOption(ZILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "setCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
