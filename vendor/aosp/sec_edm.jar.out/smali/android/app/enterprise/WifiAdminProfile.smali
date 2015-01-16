.class public Landroid/app/enterprise/WifiAdminProfile;
.super Ljava/lang/Object;
.source "WifiAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/WifiAdminProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public anonymousIdentity:Ljava/lang/String;

.field public caCertificate:Ljava/lang/String;

.field public clientCertification:Ljava/lang/String;

.field public cnMatchList:Ljava/lang/String;

.field public fingerprintMatchList:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public phase2:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public psk:Ljava/lang/String;

.field public security:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public staticGateway:Ljava/lang/String;

.field public staticIp:Ljava/lang/String;

.field public staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public staticPrimaryDns:Ljava/lang/String;

.field public staticSecondaryDns:Ljava/lang/String;

.field public staticSubnetMask:Ljava/lang/String;

.field public userIdentity:Ljava/lang/String;

.field public wepKey1:Ljava/lang/String;

.field public wepKey2:Ljava/lang/String;

.field public wepKey3:Ljava/lang/String;

.field public wepKey4:Ljava/lang/String;

.field public wepKeyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$1;

    invoke-direct {v0}, Landroid/app/enterprise/WifiAdminProfile$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 56
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 101
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 104
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 56
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 101
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 104
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->valueOf(I)Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->valueOf(I)Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/WifiAdminProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/enterprise/WifiAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public booleanToEnum(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1
    .parameter "text"

    .prologue
    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void
.end method
