.class Lcom/android/mms/ui/MmsPlayerControllerMulti$5;
.super Ljava/lang/Object;
.source "MmsPlayerControllerMulti.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 473
    return-void
.end method