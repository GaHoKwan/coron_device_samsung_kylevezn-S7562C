.class public Landroid/support/v4/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NavUtils$NavUtilsImplJB;,
        Landroid/support/v4/app/NavUtils$NavUtilsImplBase;,
        Landroid/support/v4/app/NavUtils$NavUtilsImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .local v0, version:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;

    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;

    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method
