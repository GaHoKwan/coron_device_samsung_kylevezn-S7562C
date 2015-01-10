.class final Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    #calls: Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->updateDoneButtonState(Z)V
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->access$100(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Z)V

    .line 435
    return-void
.end method
