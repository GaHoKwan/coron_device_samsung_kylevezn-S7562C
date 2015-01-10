.class final enum Lcom/samsung/mms/location/LocationMapActivity$searchOption;
.super Ljava/lang/Enum;
.source "LocationMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "searchOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/mms/location/LocationMapActivity$searchOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/mms/location/LocationMapActivity$searchOption;

.field public static final enum Address:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

.field public static final enum None:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

.field public static final enum POI:Lcom/samsung/mms/location/LocationMapActivity$searchOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/samsung/mms/location/LocationMapActivity$searchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->None:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 164
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    const-string v1, "Address"

    invoke-direct {v0, v1, v3}, Lcom/samsung/mms/location/LocationMapActivity$searchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->Address:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 165
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    const-string v1, "POI"

    invoke-direct {v0, v1, v4}, Lcom/samsung/mms/location/LocationMapActivity$searchOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->POI:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    sget-object v1, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->None:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->Address:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->POI:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->$VALUES:[Lcom/samsung/mms/location/LocationMapActivity$searchOption;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    const-class v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    return-object v0
.end method

.method public static values()[Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->$VALUES:[Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    return-object v0
.end method
