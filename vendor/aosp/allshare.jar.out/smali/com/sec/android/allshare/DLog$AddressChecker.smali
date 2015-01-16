.class public Lcom/sec/android/allshare/DLog$AddressChecker;
.super Ljava/lang/Object;
.source "DLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/DLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressChecker"
.end annotation


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEXCOMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_STD_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 178
    const-string v0, "(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    .line 181
    const-string v0, "((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV6_HEXCOMP_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 185
    sget-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 197
    invoke-static {p0}, Lcom/sec/android/allshare/DLog$AddressChecker;->isIPv6StdAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/allshare/DLog$AddressChecker;->isIPv6HexCompAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIPv6HexCompAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 193
    sget-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV6_HEXCOMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static isIPv6StdAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 189
    sget-object v0, Lcom/sec/android/allshare/DLog$AddressChecker;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
