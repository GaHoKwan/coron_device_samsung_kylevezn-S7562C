.class public Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;
.super Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;
.source "AttachmentTypeWeightSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentWeightListItem"
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
    .line 278
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V

    .line 280
    iput p3, p0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;->mCommand:I

    .line 281
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;->mCommand:I

    return v0
.end method
