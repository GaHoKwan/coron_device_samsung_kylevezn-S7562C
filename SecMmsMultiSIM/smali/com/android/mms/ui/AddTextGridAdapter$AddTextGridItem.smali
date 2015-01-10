.class public Lcom/android/mms/ui/AddTextGridAdapter$AddTextGridItem;
.super Lcom/android/mms/ui/IconGridAdapter$IconGridItem;
.source "AddTextGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AddTextGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddTextGridItem"
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
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconGridAdapter$IconGridItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 145
    iput p3, p0, Lcom/android/mms/ui/AddTextGridAdapter$AddTextGridItem;->mCommand:I

    .line 146
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/mms/ui/AddTextGridAdapter$AddTextGridItem;->mCommand:I

    return v0
.end method
