.class public Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "AddTextSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AddTextSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddTextListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 146
    iput p3, p0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;->mCommand:I

    .line 147
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;->mCommand:I

    return v0
.end method
