.class Lcom/android/mms/ui/ReservationMessageManager$6;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$6;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$6;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->deleteSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$700(Lcom/android/mms/ui/ReservationMessageManager;)V

    .line 1160
    return-void
.end method
