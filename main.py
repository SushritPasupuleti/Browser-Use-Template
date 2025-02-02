import os

# Optional: Disable telemetry
os.environ["ANONYMIZED_TELEMETRY"] = "false"


import asyncio
from browser_use import Agent
from browser_use.agent.views import AgentHistoryList
from langchain_ollama import ChatOllama
from initial_actions import initial_actions

task = "Scroll through the page and find the original Shannon coding paper"


async def run_search() -> AgentHistoryList:
    agent = Agent(
        task=task,
        llm=ChatOllama(
            model="qwen2.5:32b-instruct-q4_K_M",
            num_ctx=16800,
        ),
        initial_actions=initial_actions
    )

    result = await agent.run()
    return result


async def main():
    result = await run_search()
    print("\n\n", result)


if __name__ == "__main__":
    asyncio.run(main())
