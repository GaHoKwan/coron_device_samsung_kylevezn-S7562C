.class public final enum Lcom/android/internal/telephony/OperatorInfo$State;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "FORBIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method
