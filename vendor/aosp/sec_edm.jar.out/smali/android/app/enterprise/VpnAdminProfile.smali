.class public Landroid/app/enterprise/VpnAdminProfile;
.super Ljava/lang/Object;
.source "VpnAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/VpnAdminProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final VPN_TYPE_IPSEC_HYBRID_RSA:Ljava/lang/String; = "IPSEC_HYBRID_RSA"

.field public static final VPN_TYPE_IPSEC_XAUTH_PSK:Ljava/lang/String; = "IPSEC_XAUTH_PSK"

.field public static final VPN_TYPE_IPSEC_XAUTH_RSA:Ljava/lang/String; = "IPSEC_XAUTH_RSA"

.field public static final VPN_TYPE_L2TP:Ljava/lang/String; = "L2TP"

.field public static final VPN_TYPE_L2TP_IPSEC_CRT:Ljava/lang/String; = "L2TP_IPSEC"

.field public static final VPN_TYPE_L2TP_IPSEC_PSK:Ljava/lang/String; = "L2TP_IPSEC_PSK"

.field public static final VPN_TYPE_PPTP:Ljava/lang/String; = "PPTP"


# instance fields
.field public IPSecCaCertificate:Ljava/lang/String;

.field public IPSecPreSharedKey:Ljava/lang/String;

.field public IPSecUserCertificate:Ljava/lang/String;

.field public L2TPSecret:Ljava/lang/String;

.field public L2TPSecretEnable:Z

.field public PPTPEncryptionEnable:Z

.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forwardRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipsecIdentifier:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public searchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverName:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userPassword:Ljava/lang/String;

.field public vpnType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Landroid/app/enterprise/VpnAdminProfile$1;

    invoke-direct {v0}, Landroid/app/enterprise/VpnAdminProfile$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/VpnAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 98
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 94
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 98
    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 100
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 102
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 109
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    .line 145
    const-string v1, ""

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 185
    .local v0, b:B
    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 187
    if-ne v0, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 194
    iget-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 195
    iget-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 198
    return-void

    :cond_0
    move v1, v3

    .line 185
    goto :goto_0

    :cond_1
    move v2, v3

    .line 187
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/VpnAdminProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/enterprise/VpnAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    :goto_0
    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    :goto_1
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return-void

    .line 157
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
