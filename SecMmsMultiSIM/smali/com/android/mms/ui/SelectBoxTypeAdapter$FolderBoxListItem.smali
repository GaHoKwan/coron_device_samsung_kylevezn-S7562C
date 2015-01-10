.class public Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "SelectBoxTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectBoxTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderBoxListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "command"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 76
    iput p3, p0, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;->mCommand:I

    .line 77
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/mms/ui/SelectBoxTypeAdapter$FolderBoxListItem;->mCommand:I

    return v0
.end method
