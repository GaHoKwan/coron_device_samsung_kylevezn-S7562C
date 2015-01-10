.class public Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;
.super Ljava/lang/Object;
.source "IconWeightGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconWeightGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconWeightGridItem"
.end annotation


# instance fields
.field private final mResource:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;

.field private final mWeight:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "weight"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mResource:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mTitle:Ljava/lang/String;

    .line 86
    iput-wide p3, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mWeight:J

    .line 87
    return-void
.end method


# virtual methods
.method public getResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->mWeight:J

    return-wide v0
.end method
