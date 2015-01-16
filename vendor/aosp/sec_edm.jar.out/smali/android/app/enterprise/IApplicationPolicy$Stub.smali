.class public abstract Landroid/app/enterprise/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApplicationPolicy"

.field static final TRANSACTION_addAppNotificationBlackList:I = 0x3e

.field static final TRANSACTION_addAppNotificationWhiteList:I = 0x41

.field static final TRANSACTION_addAppPackageNameToBlackList:I = 0x2f

.field static final TRANSACTION_addAppPackageNameToWhiteList:I = 0x32

.field static final TRANSACTION_addAppPermissionToBlackList:I = 0x23

.field static final TRANSACTION_addAppSignatureToBlackList:I = 0x26

.field static final TRANSACTION_addAppSignatureToWhiteList:I = 0x5d

.field static final TRANSACTION_addHomeShortcut:I = 0x47

.field static final TRANSACTION_addPackagesToForceStopBlackList:I = 0x3a

.field static final TRANSACTION_addPackagesToForceStopWhiteList:I = 0x50

.field static final TRANSACTION_addPackagesToWidgetBlackList:I = 0x55

.field static final TRANSACTION_addPackagesToWidgetWhiteList:I = 0x53

.field static final TRANSACTION_backupApplicationData:I = 0x4a

.field static final TRANSACTION_changeApplicationIcon:I = 0x21

.field static final TRANSACTION_deleteHomeShortcut:I = 0x48

.field static final TRANSACTION_deleteManagedAppInfo:I = 0xd

.field static final TRANSACTION_enableOcspCheck:I = 0x5b

.field static final TRANSACTION_enableRevocationCheck:I = 0x59

.field static final TRANSACTION_getAllAppLastUsage:I = 0x1e

.field static final TRANSACTION_getAllWidgets:I = 0x4b

.field static final TRANSACTION_getAppInstallToSdCard:I = 0x4e

.field static final TRANSACTION_getAppInstallationMode:I = 0x38

.field static final TRANSACTION_getAppNotificationBlackList:I = 0x40

.field static final TRANSACTION_getAppNotificationWhiteList:I = 0x43

.field static final TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x31

.field static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x34

.field static final TRANSACTION_getAppPermissionsAllBlackLists:I = 0x35

.field static final TRANSACTION_getAppPermissionsBlackList:I = 0x25

.field static final TRANSACTION_getAppSignatureBlackList:I = 0x28

.field static final TRANSACTION_getAppSignaturesAllBlackLists:I = 0x36

.field static final TRANSACTION_getAppSignaturesAllWhiteLists:I = 0x60

.field static final TRANSACTION_getAppSignaturesWhiteList:I = 0x5f

.field static final TRANSACTION_getApplicationCacheSize:I = 0x17

.field static final TRANSACTION_getApplicationCodeSize:I = 0x15

.field static final TRANSACTION_getApplicationCpuUsage:I = 0x19

.field static final TRANSACTION_getApplicationDataSize:I = 0x16

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x22

.field static final TRANSACTION_getApplicationInstallationEnabled:I = 0xe

.field static final TRANSACTION_getApplicationMemoryUsage:I = 0x18

.field static final TRANSACTION_getApplicationName:I = 0x12

.field static final TRANSACTION_getApplicationNotificationMode:I = 0x45

.field static final TRANSACTION_getApplicationStateEnabled:I = 0xc

.field static final TRANSACTION_getApplicationStateList:I = 0x2c

.field static final TRANSACTION_getApplicationTotalSize:I = 0x14

.field static final TRANSACTION_getApplicationUninstallationEnabled:I = 0x10

.field static final TRANSACTION_getApplicationUninstallationMode:I = 0x4c

.field static final TRANSACTION_getApplicationVersion:I = 0x13

.field static final TRANSACTION_getApplicationsList:I = 0x9

.field static final TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1d

.field static final TRANSACTION_getInstalledApplicationsIDList:I = 0x11

.field static final TRANSACTION_getInstalledManagedApplicationsList:I = 0x8

.field static final TRANSACTION_getNetworkStats:I = 0x1f

.field static final TRANSACTION_getPackagesFromForceStopBlackList:I = 0x4f

.field static final TRANSACTION_getPackagesFromForceStopWhiteList:I = 0x51

.field static final TRANSACTION_getPackagesFromWidgetBlackList:I = 0x52

.field static final TRANSACTION_getPackagesFromWidgetWhiteList:I = 0x3c

.field static final TRANSACTION_getTopNCPUUsageApp:I = 0x1c

.field static final TRANSACTION_getTopNDataUsageApp:I = 0x1b

.field static final TRANSACTION_getTopNMemoryUsageApp:I = 0x1a

.field static final TRANSACTION_installApplication:I = 0x5

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3b

.field static final TRANSACTION_isApplicationInstallationEnabled:I = 0xf

.field static final TRANSACTION_isApplicationInstalled:I = 0x3

.field static final TRANSACTION_isApplicationRunning:I = 0x4

.field static final TRANSACTION_isIntentDisabled:I = 0x2e

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x5c

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x5a

.field static final TRANSACTION_isStatusBarNotificationAllowed:I = 0x46

.field static final TRANSACTION_isWidgetAllowed:I = 0x3d

.field static final TRANSACTION_removeAppNotificationBlackList:I = 0x3f

.field static final TRANSACTION_removeAppNotificationWhiteList:I = 0x42

.field static final TRANSACTION_removeAppPackageNameFromBlackList:I = 0x30

.field static final TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x33

.field static final TRANSACTION_removeAppPermissionFromBlackList:I = 0x24

.field static final TRANSACTION_removeAppSignatureFromBlackList:I = 0x27

.field static final TRANSACTION_removeAppSignatureFromWhiteList:I = 0x5e

.field static final TRANSACTION_removeManagedApplications:I = 0x1

.field static final TRANSACTION_removePackagesFromForceStopBlackList:I = 0x58

.field static final TRANSACTION_removePackagesFromForceStopWhiteList:I = 0x57

.field static final TRANSACTION_removePackagesFromWidgetBlackList:I = 0x56

.field static final TRANSACTION_removePackagesFromWidgetWhiteList:I = 0x54

.field static final TRANSACTION_restoreApplicationData:I = 0x49

.field static final TRANSACTION_setAppInstallToSdCard:I = 0x4d

.field static final TRANSACTION_setAppInstallationMode:I = 0x37

.field static final TRANSACTION_setApplicationInstallationDisabled:I = 0xa

.field static final TRANSACTION_setApplicationNotificationMode:I = 0x44

.field static final TRANSACTION_setApplicationState:I = 0x7

.field static final TRANSACTION_setApplicationStateList:I = 0x2d

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0xb

.field static final TRANSACTION_setApplicationUninstallationMode:I = 0x39

.field static final TRANSACTION_setAsManagedApp:I = 0x29

.field static final TRANSACTION_startApp:I = 0x2b

.field static final TRANSACTION_stopApp:I = 0x2a

.field static final TRANSACTION_uninstallApplication:I = 0x6

.field static final TRANSACTION_updateDataUsageDb:I = 0x20

.field static final TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "android.app.enterprise.IApplicationPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/app/enterprise/IApplicationPolicy;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1024
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 49
    :sswitch_0
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v9, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 58
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 60
    const/4 v9, 0x1

    goto :goto_0

    .line 64
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->wipeApplicationData(Ljava/lang/String;)Z

    move-result v3

    .line 68
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v9, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 78
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_1

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v9, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v3

    .line 88
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_2

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v9, 0x1

    goto :goto_0

    .line 89
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 99
    .local v2, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->installApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 100
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 101
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 106
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_6
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 111
    .restart local v2       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->uninstallApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 112
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_6

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 110
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 113
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_7

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_7
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    .line 123
    .restart local v2       #_arg1:Z
    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 124
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_8

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 125
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_9

    .line 130
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_8
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledManagedApplicationsList()[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 134
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 138
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_9
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    .line 142
    .local v3, _result:[Landroid/app/enterprise/ManagedAppInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 144
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[Landroid/app/enterprise/ManagedAppInfo;
    :sswitch_a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    .line 153
    .restart local v2       #_arg1:Z
    :goto_a
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 152
    .end local v2           #_arg1:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 159
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    .line 164
    .restart local v2       #_arg1:Z
    :goto_b
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 163
    .end local v2           #_arg1:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 174
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v3, :cond_b

    const/4 v9, 0x1

    :goto_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 175
    :cond_b
    const/4 v9, 0x0

    goto :goto_c

    .line 180
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->deleteManagedAppInfo(Ljava/lang/String;)Z

    move-result v3

    .line 184
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_c

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 185
    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    .line 190
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 194
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v3, :cond_d

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 195
    :cond_d
    const/4 v9, 0x0

    goto :goto_e

    .line 200
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    .line 205
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 210
    .local v2, _arg1:Landroid/net/Uri;
    :goto_f
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    .line 211
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v3, :cond_f

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 208
    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v3           #_result:Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/Uri;
    goto :goto_f

    .line 212
    .restart local v3       #_result:Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    .line 217
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v3           #_result:Z
    :sswitch_10
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 221
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v3, :cond_10

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 222
    :cond_10
    const/4 v9, 0x0

    goto :goto_11

    .line 227
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_11
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 231
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 235
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_12
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 245
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 255
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationTotalSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 259
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_15
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCodeSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 269
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 275
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_16
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationDataSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 279
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 285
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_17
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCacheSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 289
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 295
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_18
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationMemoryUsage(Ljava/lang/String;)J

    move-result-wide v3

    .line 299
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 305
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_19
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCpuUsage(Ljava/lang/String;)J

    move-result-wide v3

    .line 309
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 315
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_1a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    const/4 v2, 0x1

    .line 320
    .local v2, _arg1:Z
    :goto_12
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNMemoryUsageApp(IZ)Ljava/util/List;

    move-result-object v6

    .line 321
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 323
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 319
    .end local v2           #_arg1:Z
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 327
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNDataUsageApp(I)Ljava/util/List;

    move-result-object v6

    .line 331
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 333
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 337
    .end local v0           #_arg0:I
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :sswitch_1c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v2, 0x1

    .line 342
    .restart local v2       #_arg1:Z
    :goto_13
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNCPUUsageApp(IZ)Ljava/util/List;

    move-result-object v6

    .line 343
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 345
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 341
    .end local v2           #_arg1:Z
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 349
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    .line 351
    .local v3, _result:[Landroid/app/enterprise/AppInfoLastUsage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 353
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 357
    .end local v3           #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    :sswitch_1e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    .line 359
    .restart local v3       #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 361
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 365
    .end local v3           #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    :sswitch_1f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getNetworkStats()Ljava/util/List;

    move-result-object v7

    .line 367
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 369
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 373
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/NetworkStats;>;"
    :sswitch_20
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->updateDataUsageDb()V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 380
    :sswitch_21
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 385
    .local v2, _arg1:[B
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v3

    .line 386
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v3, :cond_13

    const/4 v9, 0x1

    :goto_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 387
    :cond_13
    const/4 v9, 0x0

    goto :goto_14

    .line 392
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_result:Z
    :sswitch_22
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v3

    .line 396
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 398
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 402
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[B
    :sswitch_23
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPermissionToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 406
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v3, :cond_14

    const/4 v9, 0x1

    :goto_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 407
    :cond_14
    const/4 v9, 0x0

    goto :goto_15

    .line 412
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_24
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 416
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v3, :cond_15

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 417
    :cond_15
    const/4 v9, 0x0

    goto :goto_16

    .line 422
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_25
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsBlackList()[Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 426
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 430
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_26
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppSignatureToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 434
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v3, :cond_16

    const/4 v9, 0x1

    :goto_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 435
    :cond_16
    const/4 v9, 0x0

    goto :goto_17

    .line 440
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_27
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 444
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v3, :cond_17

    const/4 v9, 0x1

    :goto_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 445
    :cond_17
    const/4 v9, 0x0

    goto :goto_18

    .line 450
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_28
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignatureBlackList()[Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 454
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 458
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_29
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAsManagedApp(Ljava/lang/String;)Z

    move-result v3

    .line 462
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v3, :cond_18

    const/4 v9, 0x1

    :goto_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 463
    :cond_18
    const/4 v9, 0x0

    goto :goto_19

    .line 468
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->stopApp(Ljava/lang/String;)Z

    move-result v3

    .line 472
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v3, :cond_19

    const/4 v9, 0x1

    :goto_1a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 473
    :cond_19
    const/4 v9, 0x0

    goto :goto_1a

    .line 478
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->startApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 484
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v3, :cond_1a

    const/4 v9, 0x1

    :goto_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 485
    :cond_1a
    const/4 v9, 0x0

    goto :goto_1b

    .line 490
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v0, 0x1

    .line 493
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateList(Z)[Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 496
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 492
    .end local v0           #_arg0:Z
    .end local v3           #_result:[Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 500
    :sswitch_2d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v2, 0x1

    .line 505
    .local v2, _arg1:Z
    :goto_1d
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 506
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 508
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 504
    .end local v2           #_arg1:Z
    .end local v3           #_result:[Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 512
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_2e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    .line 515
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 520
    .local v0, _arg0:Landroid/content/Intent;
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v3

    .line 521
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v3, :cond_1e

    const/4 v9, 0x1

    :goto_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 518
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v3           #_result:Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_1e

    .line 522
    .restart local v3       #_result:Z
    :cond_1e
    const/4 v9, 0x0

    goto :goto_1f

    .line 527
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v3           #_result:Z
    :sswitch_2f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 531
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v3, :cond_1f

    const/4 v9, 0x1

    :goto_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 532
    :cond_1f
    const/4 v9, 0x0

    goto :goto_20

    .line 537
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_30
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 541
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v3, :cond_20

    const/4 v9, 0x1

    :goto_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 542
    :cond_20
    const/4 v9, 0x0

    goto :goto_21

    .line 547
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_31
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 549
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 551
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 555
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_32
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 559
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v3, :cond_21

    const/4 v9, 0x1

    :goto_22
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 560
    :cond_21
    const/4 v9, 0x0

    goto :goto_22

    .line 565
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_33
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 569
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v3, :cond_22

    const/4 v9, 0x1

    :goto_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 570
    :cond_22
    const/4 v9, 0x0

    goto :goto_23

    .line 575
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_34
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 577
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 579
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 583
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_35
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 585
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 587
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 591
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_36
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignaturesAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 593
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 595
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 599
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_37
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAppInstallationMode(I)Z

    move-result v3

    .line 603
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v3, :cond_23

    const/4 v9, 0x1

    :goto_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 604
    :cond_23
    const/4 v9, 0x0

    goto :goto_24

    .line 609
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_38
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppInstallationMode()I

    move-result v3

    .line 611
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 617
    .end local v3           #_result:I
    :sswitch_39
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationUninstallationMode(I)Z

    move-result v3

    .line 621
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    if-eqz v3, :cond_24

    const/4 v9, 0x1

    :goto_25
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 622
    :cond_24
    const/4 v9, 0x0

    goto :goto_25

    .line 627
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 630
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    .line 631
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v3, :cond_25

    const/4 v9, 0x1

    :goto_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 632
    :cond_25
    const/4 v9, 0x0

    goto :goto_26

    .line 637
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_3b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    const/4 v2, 0x1

    .line 642
    .restart local v2       #_arg1:Z
    :goto_27
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;Z)Z

    move-result v3

    .line 643
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v3, :cond_27

    const/4 v9, 0x1

    :goto_28
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 641
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 644
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_27
    const/4 v9, 0x0

    goto :goto_28

    .line 649
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_3c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getPackagesFromWidgetWhiteList()Ljava/util/List;

    move-result-object v8

    .line 651
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 653
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 657
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v3

    .line 661
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v3, :cond_28

    const/4 v9, 0x1

    :goto_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 662
    :cond_28
    const/4 v9, 0x0

    goto :goto_29

    .line 667
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 670
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppNotificationBlackList(Ljava/util/List;)Z

    move-result v3

    .line 671
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    if-eqz v3, :cond_29

    const/4 v9, 0x1

    :goto_2a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 672
    :cond_29
    const/4 v9, 0x0

    goto :goto_2a

    .line 677
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_3f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 680
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppNotificationBlackList(Ljava/util/List;)Z

    move-result v3

    .line 681
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v3, :cond_2a

    const/4 v9, 0x1

    :goto_2b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 682
    :cond_2a
    const/4 v9, 0x0

    goto :goto_2b

    .line 687
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_40
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2b

    const/4 v0, 0x1

    .line 690
    .local v0, _arg0:Z
    :goto_2c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppNotificationBlackList(Z)Ljava/util/List;

    move-result-object v8

    .line 691
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 693
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 689
    .end local v0           #_arg0:Z
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2c

    .line 697
    :sswitch_41
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 700
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppNotificationWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 701
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v3, :cond_2c

    const/4 v9, 0x1

    :goto_2d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 702
    :cond_2c
    const/4 v9, 0x0

    goto :goto_2d

    .line 707
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_42
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 710
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppNotificationWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 711
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v3, :cond_2d

    const/4 v9, 0x1

    :goto_2e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 712
    :cond_2d
    const/4 v9, 0x0

    goto :goto_2e

    .line 717
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_43
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v0, 0x1

    .line 720
    .restart local v0       #_arg0:Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppNotificationWhiteList(Z)Ljava/util/List;

    move-result-object v8

    .line 721
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 723
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 719
    .end local v0           #_arg0:Z
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2f

    .line 727
    :sswitch_44
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 730
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationNotificationMode(I)Z

    move-result v3

    .line 731
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v3, :cond_2f

    const/4 v9, 0x1

    :goto_30
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 732
    :cond_2f
    const/4 v9, 0x0

    goto :goto_30

    .line 737
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_45
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    const/4 v0, 0x1

    .line 740
    .local v0, _arg0:Z
    :goto_31
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationNotificationMode(Z)I

    move-result v3

    .line 741
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 739
    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_30
    const/4 v0, 0x0

    goto :goto_31

    .line 747
    :sswitch_46
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v3

    .line 751
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v3, :cond_31

    const/4 v9, 0x1

    :goto_32
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 752
    :cond_31
    const/4 v9, 0x0

    goto :goto_32

    .line 757
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_47
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 763
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    if-eqz v3, :cond_32

    const/4 v9, 0x1

    :goto_33
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 764
    :cond_32
    const/4 v9, 0x0

    goto :goto_33

    .line 769
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_48
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 773
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 774
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 775
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    if-eqz v3, :cond_33

    const/4 v9, 0x1

    :goto_34
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 776
    :cond_33
    const/4 v9, 0x0

    goto :goto_34

    .line 781
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_49
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 785
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_34

    .line 786
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 791
    .local v2, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_35
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 792
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 789
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:I
    :cond_34
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_35

    .line 798
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_4a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_35

    .line 803
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 808
    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    :goto_36
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 809
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 806
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:I
    :cond_35
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_36

    .line 815
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_4b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 818
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 819
    .local v3, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 821
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 825
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/util/Map;
    :sswitch_4c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationUninstallationMode()I

    move-result v3

    .line 827
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 833
    .end local v3           #_result:I
    :sswitch_4d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_36

    const/4 v0, 0x1

    .line 836
    .local v0, _arg0:Z
    :goto_37
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAppInstallToSdCard(Z)Z

    move-result v3

    .line 837
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v3, :cond_37

    const/4 v9, 0x1

    :goto_38
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 835
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_37

    .line 838
    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_37
    const/4 v9, 0x0

    goto :goto_38

    .line 843
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_4e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppInstallToSdCard()Z

    move-result v3

    .line 845
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v3, :cond_38

    const/4 v9, 0x1

    :goto_39
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 846
    :cond_38
    const/4 v9, 0x0

    goto :goto_39

    .line 851
    .end local v3           #_result:Z
    :sswitch_4f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getPackagesFromForceStopBlackList()Ljava/util/List;

    move-result-object v8

    .line 853
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 855
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 859
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_50
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 862
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addPackagesToForceStopWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 863
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    if-eqz v3, :cond_39

    const/4 v9, 0x1

    :goto_3a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 864
    :cond_39
    const/4 v9, 0x0

    goto :goto_3a

    .line 869
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_51
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getPackagesFromForceStopWhiteList()Ljava/util/List;

    move-result-object v8

    .line 871
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 873
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 877
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_52
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getPackagesFromWidgetBlackList()Ljava/util/List;

    move-result-object v8

    .line 879
    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 881
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 885
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_53
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 888
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addPackagesToWidgetWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 889
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    if-eqz v3, :cond_3a

    const/4 v9, 0x1

    :goto_3b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 890
    :cond_3a
    const/4 v9, 0x0

    goto :goto_3b

    .line 895
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_54
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 898
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removePackagesFromWidgetWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 899
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    if-eqz v3, :cond_3b

    const/4 v9, 0x1

    :goto_3c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 900
    :cond_3b
    const/4 v9, 0x0

    goto :goto_3c

    .line 905
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_55
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 908
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addPackagesToWidgetBlackList(Ljava/util/List;)Z

    move-result v3

    .line 909
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v3, :cond_3c

    const/4 v9, 0x1

    :goto_3d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 910
    :cond_3c
    const/4 v9, 0x0

    goto :goto_3d

    .line 915
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_56
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 918
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removePackagesFromWidgetBlackList(Ljava/util/List;)Z

    move-result v3

    .line 919
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v3, :cond_3d

    const/4 v9, 0x1

    :goto_3e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 920
    :cond_3d
    const/4 v9, 0x0

    goto :goto_3e

    .line 925
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_57
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 928
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removePackagesFromForceStopWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 929
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    if-eqz v3, :cond_3e

    const/4 v9, 0x1

    :goto_3f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 930
    :cond_3e
    const/4 v9, 0x0

    goto :goto_3f

    .line 935
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_58
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 938
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    .line 939
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v3, :cond_3f

    const/4 v9, 0x1

    :goto_40
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 940
    :cond_3f
    const/4 v9, 0x0

    goto :goto_40

    .line 945
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_59
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_40

    const/4 v2, 0x1

    .line 950
    .local v2, _arg1:Z
    :goto_41
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->enableRevocationCheck(Ljava/lang/String;Z)Z

    move-result v3

    .line 951
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v3, :cond_41

    const/4 v9, 0x1

    :goto_42
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 949
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_41

    .line 952
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_41
    const/4 v9, 0x0

    goto :goto_42

    .line 957
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_5a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 960
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 961
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    if-eqz v3, :cond_42

    const/4 v9, 0x1

    :goto_43
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 962
    :cond_42
    const/4 v9, 0x0

    goto :goto_43

    .line 967
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43

    const/4 v2, 0x1

    .line 972
    .restart local v2       #_arg1:Z
    :goto_44
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->enableOcspCheck(Ljava/lang/String;Z)Z

    move-result v3

    .line 973
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v3, :cond_44

    const/4 v9, 0x1

    :goto_45
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 971
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_43
    const/4 v2, 0x0

    goto :goto_44

    .line 974
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_44
    const/4 v9, 0x0

    goto :goto_45

    .line 979
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_5c
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 982
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 983
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v3, :cond_45

    const/4 v9, 0x1

    :goto_46
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 984
    :cond_45
    const/4 v9, 0x0

    goto :goto_46

    .line 989
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppSignatureToWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 993
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    if-eqz v3, :cond_46

    const/4 v9, 0x1

    :goto_47
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 994
    :cond_46
    const/4 v9, 0x0

    goto :goto_47

    .line 999
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppSignatureFromWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 1003
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    if-eqz v3, :cond_47

    const/4 v9, 0x1

    :goto_48
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1004
    :cond_47
    const/4 v9, 0x0

    goto :goto_48

    .line 1009
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_5f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignaturesWhiteList()[Ljava/lang/String;

    move-result-object v3

    .line 1011
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1013
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_60
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignaturesAllWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 1019
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1021
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 45
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
