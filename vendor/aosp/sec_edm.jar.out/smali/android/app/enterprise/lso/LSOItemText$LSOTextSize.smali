.class public final enum Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
.super Ljava/lang/Enum;
.source "LSOItemText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LSOItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LSOTextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

.field public static final enum HUGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

.field public static final enum LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

.field public static final enum NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

.field public static final enum SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

.field public static final enum TINY:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;


# instance fields
.field public final nativeVal:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    const-string v1, "TINY"

    const v2, 0x3f59999a

    invoke-direct {v0, v1, v3, v2}, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->TINY:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    new-instance v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    const-string v1, "SMALL"

    const v2, 0x3f6e147b

    invoke-direct {v0, v1, v4, v2}, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    new-instance v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    const-string v1, "NORMAL"

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v5, v2}, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    new-instance v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    const-string v1, "LARGE"

    const v2, 0x3fa66666

    invoke-direct {v0, v1, v6, v2}, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    new-instance v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    const-string v1, "HUGE"

    const v2, 0x3fe66666

    invoke-direct {v0, v1, v7, v2}, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->HUGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    sget-object v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->TINY:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->NORMAL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->HUGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    aput-object v1, v0, v7

    sput-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->$VALUES:[Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter "nv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->nativeVal:F

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    return-object v0
.end method

.method public static values()[Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->$VALUES:[Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    return-object v0
.end method
