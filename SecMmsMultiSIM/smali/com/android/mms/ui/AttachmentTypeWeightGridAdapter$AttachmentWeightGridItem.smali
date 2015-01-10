.class public Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;
.super Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;
.source "AttachmentTypeWeightGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentWeightGridItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V
    .locals 0
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"
    .parameter "weight"

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V

    .line 294
    iput p3, p0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;->mCommand:I

    .line 295
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;->mCommand:I

    return v0
.end method
