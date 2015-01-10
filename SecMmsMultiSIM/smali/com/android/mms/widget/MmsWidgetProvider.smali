.class public Lcom/android/mms/widget/MmsWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MmsWidgetProvider.java"


# static fields
.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

.field private static final TAG:Ljava/lang/String; = "Mms/WidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    const-string v1, "Mms/WidgetProvider"

    const-string v2, "notifyDatasetChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public static setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, msgIntent:Landroid/content/Intent;
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 133
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0e024a

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 134
    return-void
.end method

.method public static setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, composeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0e0249

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    return-void
.end method

.method public static setIntentForConversationList(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    .line 97
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, convIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 102
    .local v0, clickIntent:Landroid/app/PendingIntent;
    const v2, 0x7f0e0247

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    return-void
.end method

.method public static setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "remoteViews"

    .prologue
    const v2, 0x7f0e024a

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/widget/MmsWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 143
    const v1, 0x7f0e024b

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 147
    return-void
.end method

.method private static updateWidget(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 80
    const-string v1, "Mms/WidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidget appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03009e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 84
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 85
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForConversationList(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 86
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForComposer(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 87
    invoke-static {p0, v0}, Lcom/android/mms/widget/MmsWidgetProvider;->setIntentForClickListItem(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 89
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v7, "Mms/WidgetProvider"

    const-string v8, "onReceive()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    const-string v7, "Mms/WidgetProvider"

    const-string v8, "onReceive() action=ACTION_NOTIFY_DATASET_CHANGED"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 62
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 64
    .local v1, appWidgetIds:[I
    array-length v7, v1

    if-lez v7, :cond_1

    .line 65
    const-string v7, "Mms/WidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() appWidgetIds.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    move-object v3, v1

    .local v3, arr$:[I
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v6, v3, v4

    .line 68
    .local v6, widgetId:I
    const v7, 0x7f0e024a

    invoke-virtual {v2, v6, v7}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v1           #appWidgetIds:[I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #widgetId:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 43
    aget v1, p3, v0

    invoke-static {p1, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
