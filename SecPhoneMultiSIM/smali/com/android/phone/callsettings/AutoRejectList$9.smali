.class Lcom/android/phone/callsettings/AutoRejectList$9;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1102(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 490
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1700(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 491
    return-void
.end method