.class Lcom/android/phone/callsettings/AutoRejectList$2;
.super Landroid/database/ContentObserver;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$200(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$2;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$302(Lcom/android/phone/callsettings/AutoRejectList;Z)Z

    .line 182
    :cond_0
    return-void
.end method
