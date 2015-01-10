.class final enum Lcom/android/phone/InVTCallScreen$AudioConnectedState;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioConnectedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$AudioConnectedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$AudioConnectedState;

.field public static final enum BT:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

.field public static final enum Headset:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

.field public static final enum NONE:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

.field public static final enum RECEIVER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

.field public static final enum SPEAKER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7883
    new-instance v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$AudioConnectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->NONE:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    .line 7884
    new-instance v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$AudioConnectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->SPEAKER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    .line 7885
    new-instance v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    const-string v1, "Headset"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$AudioConnectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->Headset:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    .line 7886
    new-instance v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    const-string v1, "BT"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$AudioConnectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->BT:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    .line 7887
    new-instance v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    const-string v1, "RECEIVER"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InVTCallScreen$AudioConnectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->RECEIVER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    .line 7882
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    sget-object v1, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->NONE:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->SPEAKER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->Headset:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->BT:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->RECEIVER:Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->$VALUES:[Lcom/android/phone/InVTCallScreen$AudioConnectedState;

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
    .line 7882
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$AudioConnectedState;
    .locals 1
    .parameter

    .prologue
    .line 7882
    const-class v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$AudioConnectedState;
    .locals 1

    .prologue
    .line 7882
    sget-object v0, Lcom/android/phone/InVTCallScreen$AudioConnectedState;->$VALUES:[Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$AudioConnectedState;

    return-object v0
.end method
