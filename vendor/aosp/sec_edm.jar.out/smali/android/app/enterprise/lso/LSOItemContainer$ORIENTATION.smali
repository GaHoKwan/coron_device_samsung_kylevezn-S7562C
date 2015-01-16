.class public final enum Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;
.super Ljava/lang/Enum;
.source "LSOItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LSOItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

.field public static final enum HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

.field public static final enum VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    new-instance v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    sget-object v1, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->$VALUES:[Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    return-object v0
.end method

.method public static values()[Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->$VALUES:[Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    return-object v0
.end method
