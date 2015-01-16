.class public abstract Landroid/app/enterprise/geofencing/IGeofencing$Stub;
.super Landroid/os/Binder;
.source "IGeofencing.java"

# interfaces
.implements Landroid/app/enterprise/geofencing/IGeofencing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/geofencing/IGeofencing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/geofencing/IGeofencing$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.geofencing.IGeofencing"

.field static final TRANSACTION_createGeofence:I = 0x1

.field static final TRANSACTION_destroyGeofence:I = 0x2

.field static final TRANSACTION_getGeofences:I = 0x6

.field static final TRANSACTION_getMinDistanceParameter:I = 0xb

.field static final TRANSACTION_getMinTimeParameter:I = 0x9

.field static final TRANSACTION_isDeviceInsideGeofence:I = 0x7

.field static final TRANSACTION_isGeofencingEnabled:I = 0x5

.field static final TRANSACTION_setMinDistanceParameter:I = 0xa

.field static final TRANSACTION_setMinTimeParameter:I = 0x8

.field static final TRANSACTION_startGeofencing:I = 0x3

.field static final TRANSACTION_stopGeofencing:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/geofencing/IGeofencing;
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
    const-string v1, "android.app.enterprise.geofencing.IGeofencing"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/geofencing/IGeofencing;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/geofencing/IGeofencing$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    sget-object v5, Landroid/app/enterprise/geofencing/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/Geofence;

    .line 59
    .local v0, _arg0:Landroid/app/enterprise/geofencing/Geofence;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->createGeofence(Landroid/app/enterprise/geofencing/Geofence;)I

    move-result v2

    .line 60
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/app/enterprise/geofencing/Geofence;
    .end local v2           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/geofencing/Geofence;
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Landroid/app/enterprise/geofencing/Geofence;
    :sswitch_2
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->destroyGeofence(I)Z

    move-result v2

    .line 70
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_3
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->startGeofencing()Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v2           #_result:Z
    :sswitch_4
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->stopGeofencing()Z

    move-result v2

    .line 86
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v2           #_result:Z
    :sswitch_5
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->isGeofencingEnabled()Z

    move-result v2

    .line 94
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->getGeofences()Ljava/util/List;

    move-result-object v4

    .line 102
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 108
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    :sswitch_7
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->isDeviceInsideGeofence()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 116
    .end local v2           #_result:Ljava/util/List;
    :sswitch_8
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 119
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->setMinTimeParameter(J)Z

    move-result v2

    .line 120
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:J
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->getMinTimeParameter()J

    move-result-wide v2

    .line 128
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 134
    .end local v2           #_result:J
    :sswitch_a
    const-string v7, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 137
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->setMinDistanceParameter(F)Z

    move-result v2

    .line 138
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:F
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "android.app.enterprise.geofencing.IGeofencing"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->getMinDistanceParameter()F

    move-result v2

    .line 146
    .local v2, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
