.class Lcom/android/mms/ui/BoxListFrame$6;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->showSelectBoxDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1100(Lcom/android/mms/ui/BoxListFrame;)V

    .line 975
    return-void
.end method
