.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 900
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 901
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 902
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f09002a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 904
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 905
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 906
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_videocall_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 901
    goto :goto_0

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_2
    move v3, v2

    .line 904
    goto :goto_1

    .line 910
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_2
.end method
