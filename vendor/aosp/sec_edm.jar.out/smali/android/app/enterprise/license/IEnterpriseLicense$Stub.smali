.class public abstract Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseLicense.java"

# interfaces
.implements Landroid/app/enterprise/license/IEnterpriseLicense;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/license/IEnterpriseLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/license/IEnterpriseLicense$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.license.IEnterpriseLicense"

.field static final TRANSACTION_activateLicense:I = 0xb

.field static final TRANSACTION_deleteApiCallData:I = 0x6

.field static final TRANSACTION_deleteApiCallDataByAdmin:I = 0x8

.field static final TRANSACTION_getAllLicenseInfo:I = 0x9

.field static final TRANSACTION_getApiCallData:I = 0x5

.field static final TRANSACTION_getApiCallDataByAdmin:I = 0x7

.field static final TRANSACTION_getLicenseInfo:I = 0xa

.field static final TRANSACTION_getRightsObject:I = 0x3

.field static final TRANSACTION_log:I = 0xc

.field static final TRANSACTION_processLicenseActivationResponse:I = 0x2

.field static final TRANSACTION_processLicenseValidationResult:I = 0x4

.field static final TRANSACTION_registerLicenseActivationCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/license/IEnterpriseLicense;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/license/IEnterpriseLicense;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/license/IEnterpriseLicense;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/license/IEnterpriseLicense$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/license/IAgentCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/license/IAgentCallback;

    move-result-object v1

    .line 54
    .local v1, _arg0:Landroid/app/enterprise/license/IAgentCallback;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->registerLicenseActivationCallback(Landroid/app/enterprise/license/IAgentCallback;)Z

    move-result v7

    .line 55
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v7, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    .line 61
    .end local v1           #_arg0:Landroid/app/enterprise/license/IAgentCallback;
    .end local v7           #_result:Z
    :sswitch_2
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Landroid/app/enterprise/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/license/RightsObject;

    .line 78
    .local v5, _arg4:Landroid/app/enterprise/license/RightsObject;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    sget-object v0, Landroid/app/enterprise/license/Error;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/license/Error;

    .local v6, _arg5:Landroid/app/enterprise/license/Error;
    :goto_3
    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z

    move-result v7

    .line 85
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v7, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v5           #_arg4:Landroid/app/enterprise/license/RightsObject;
    .end local v6           #_arg5:Landroid/app/enterprise/license/Error;
    .end local v7           #_result:Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/app/enterprise/license/RightsObject;
    goto :goto_2

    .line 82
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/app/enterprise/license/Error;
    goto :goto_3

    .line 91
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Landroid/app/enterprise/license/RightsObject;
    .end local v6           #_arg5:Landroid/app/enterprise/license/Error;
    :sswitch_3
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;

    move-result-object v7

    .line 95
    .local v7, _result:Landroid/app/enterprise/license/RightsObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v7, :cond_4

    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v7, p3, v8}, Landroid/app/enterprise/license/RightsObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/app/enterprise/license/RightsObject;
    :sswitch_4
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    sget-object v0, Landroid/app/enterprise/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/RightsObject;

    .line 120
    .local v3, _arg2:Landroid/app/enterprise/license/RightsObject;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    sget-object v0, Landroid/app/enterprise/license/Error;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/license/Error;

    .line 126
    .local v4, _arg3:Landroid/app/enterprise/license/Error;
    :goto_5
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z

    move-result v7

    .line 127
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v7, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v3           #_arg2:Landroid/app/enterprise/license/RightsObject;
    .end local v4           #_arg3:Landroid/app/enterprise/license/Error;
    .end local v7           #_result:Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/app/enterprise/license/RightsObject;
    goto :goto_4

    .line 124
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/app/enterprise/license/Error;
    goto :goto_5

    .line 133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/app/enterprise/license/RightsObject;
    .end local v4           #_arg3:Landroid/app/enterprise/license/Error;
    :sswitch_5
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 137
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v7, :cond_8

    .line 139
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 143
    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_6
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    sget-object v0, Landroid/app/enterprise/license/Error;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/Error;

    .line 161
    .local v3, _arg2:Landroid/app/enterprise/license/Error;
    :goto_6
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z

    move-result v7

    .line 162
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v7, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v3           #_arg2:Landroid/app/enterprise/license/Error;
    .end local v7           #_result:Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/app/enterprise/license/Error;
    goto :goto_6

    .line 168
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/app/enterprise/license/Error;
    :sswitch_7
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 172
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v7, :cond_b

    .line 174
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v7, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 178
    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_8
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->deleteApiCallDataByAdmin(Ljava/lang/String;)Z

    move-result v7

    .line 188
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v7, :cond_c

    move v9, v8

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_9
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 196
    .local v7, _result:[Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 202
    .end local v7           #_result:[Landroid/app/enterprise/license/LicenseInfo;
    :sswitch_a
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 206
    .local v7, _result:Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v7, :cond_d

    .line 208
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v7, p3, v8}, Landroid/app/enterprise/license/LicenseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 212
    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/app/enterprise/license/LicenseInfo;
    :sswitch_b
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->activateLicense(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 227
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.app.enterprise.license.IEnterpriseLicense"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->log(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
