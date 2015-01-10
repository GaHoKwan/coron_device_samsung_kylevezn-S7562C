.class public Lcom/sec/android/app/contacts/model/AccountTypeInfo;
.super Ljava/lang/Object;
.source "AccountTypeInfo.java"


# static fields
.field private static mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static isDeviceLocalAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.my_profile"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
